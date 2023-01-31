#include "redismodule.h"

/* Define a custom data type to store the string arguments */
typedef struct {
    int argc;
    RedisModuleString **argv;
} MyStringArray;

/* Implementation of the custom command */
int MyCommand_RedisCommand(RedisModuleCtx *ctx, RedisModuleString **argv, int argc) {
    /* Create an instance of the custom data type */
    MyStringArray *my_array = malloc(sizeof(*my_array));
    my_array->argc = argc - 1;
    my_array->argv = argv + 1;

    /* Store the instance in a Redis key */
    RedisModuleKey *key = RedisModule_OpenKey(ctx, argv[1], REDISMODULE_WRITE);
    int status = RedisModule_ModuleTypeSetValue(key, RedisModule_GetType(key), my_array);
    if (status != REDISMODULE_OK) {
        RedisModule_CloseKey(key);
        return RedisModule_ReplyWithError(ctx, "Error storing value");
    }

    /* Clean up and return success */
    RedisModule_CloseKey(key);
    return RedisModule_ReplyWithSimpleString(ctx, "OK");
}

/* Implementation of the custom data type's serialization and deserialization functions */
void *MyStringArray_RdbLoad(RedisModuleIO *rdb, int encver) {
    /* Read the number of arguments */
    int argc = RedisModule_LoadSigned(rdb);

    /* Allocate memory for the custom data type instance */
    MyStringArray *my_array = malloc(sizeof(*my_array));
    my_array->argc = argc;
    my_array->argv = malloc(argc * sizeof(*my_array->argv));

    /* Read each argument */
    int i;
    for (i = 0; i < argc; i++) {
        my_array->argv[i] = RedisModule_LoadString(rdb);
    }

    return my_array;
}

void MyStringArray_RdbSave(RedisModuleIO *rdb, void *value) {
    MyStringArray *my_array = value;

    /* Write the number of arguments */
    RedisModule_SaveSigned(rdb, my_array->argc);

    /* Write each argument */
    int i;
    for (i = 0; i < my_array->argc; i++) {
        RedisModule_SaveString(rdb, my_array->argv[i]);
    }
}

void MyStringArray_AofRewrite(RedisModuleIO *aof, RedisModuleString *key, void *value) {
    MyStringArray *my_array = value;

    /* Write a command to recreate the key and its value */
    RedisModule_EmitAOF(aof, "MYCOMMAND", "s", key, my_array->argc, my_array->argv);
}
void MyStringArray_Free(void *value) {
    MyStringArray *my_array = value;

    /* Free each argument */
    int i;
    for (i = 0; i < my_array->argc; i++) {
        RedisModule_FreeString(NULL, my_array->argv[i]);
    }

    /* Free the array of arguments */
    free(my_array->argv);

    /* Free the custom data type instance */
    free(my_array);
}

int RedisModule_OnLoad(RedisModuleCtx *ctx) {
    /* Register the custom command */
    if (RedisModule_CreateCommand(ctx, "MYCOMMAND", MyCommand_RedisCommand, "write", 1, 1, 1) == REDISMODULE_ERR) {
        return REDISMODULE_ERR;
    }

    /* Register the custom data type */
    RedisModuleTypeMethods tm = {
        .version = REDISMODULE_TYPE_METHOD_VERSION,
        .rdb_load = MyStringArray_RdbLoad,
        .rdb_save = MyStringArray_RdbSave,
        .aof_rewrite = MyStringArray_AofRewrite,
        .free = MyStringArray_Free
    };

    RedisModule_CreateDataType(ctx, "mystringarray", 0, &tm);

    return REDISMODULE_OK;
}

