#include <cstdio>
#include <ctime>
extern "C" void __cyg_profile_func_enter(void* this_fn, void* call_site);
extern "C" void __cyg_profile_func_exit(void* this_fn, void* call_site);
 
static FILE *fp_trace;
 
void
__attribute__ ((constructor))
trace_begin (void)
{
 fp_trace = fopen("trace.out", "w");
}
 
void
__attribute__ ((destructor))
trace_end (void)
{
 if(fp_trace != NULL) {
 fclose(fp_trace);
 }
}
 
void
__cyg_profile_func_enter (void *func,  void *caller)
{
 if(fp_trace != NULL) {
 fprintf(fp_trace, "e %p %p %lu\n", func, caller, time(NULL) );
 }
}
 
void
__cyg_profile_func_exit (void *func, void *caller)
{
 if(fp_trace != NULL) {
 fprintf(fp_trace, "x %p %p %lu\n", func, caller, time(NULL));
 }
}
