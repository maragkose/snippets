#include <iostream>
#include <string>
#include <iomanip>

#include "gtest/gtest.h"

TEST(MyTest, helloworld) {

    std::string hello = "hello";
    EXPECT_EQ(hello, "hello"); 
    EXPECT_EQ(hello, "hello"); 

}

int main(int argc, char ** argv) {
    testing::InitGoogleTest(&argc, argv);
    return RUN_ALL_TESTS();
}
