#include <gtest/gtest.h>
#include "ceaser.hh"

TEST(hashKeyValue, correctHashKey) {
    char * x = "BIRTHDAY";
    ASSERT_EQ(17, hash(x));

}

TEST(hashKeyValue, correctHashKey1) {
    char * y = "PASSWORD";
    ASSERT_EQ(45, hash(y));
}

TEST(hashKeyValue, correctHashKey2) {
    char * z = "MOUNTAINS";
    ASSERT_EQ(23, hash(z));
}

TEST(hashKeyValue, correctHashKey3) {
    char * xx = "birthday";
    ASSERT_EQ(79, hash(xx));
}

TEST(hashKeyValue, correctHashKey4) {
    char * z = "MOUNTAINS";
    ASSERT_EQ(23, hash(z));
}

TEST(hashKeyValue, correctHashKey5) {
    char * yy = "password";
    ASSERT_EQ(10, hash(yy));
}


TEST(hashKeyValue, LessEqHashsize1) {
    int HASH_SIZE = 97;
    char * x = "nvkwnvccdsnfcoiwewecoweiojfd";
    ASSERT_LE(hash(x), HASH_SIZE);
}

TEST(hashKeyValue, LessEqHashsize2) {
    int HASH_SIZE = 97;
    char * y = "cjwieofckljmweiojmcwe";
     ASSERT_LE(hash(y), HASH_SIZE);
}

TEST(hashKeyValue, LessEqHashsize3) {
    int HASH_SIZE = 97;
   char * z = "MOUNTAINS";
     ASSERT_LE(hash(z), HASH_SIZE);
}

TEST(hashKeyValue, LessEqHashsize4) {
    int HASH_SIZE = 97;
    char * xx = "birthday";
    ASSERT_LE(hash(xx), HASH_SIZE);
}

TEST(hashKeyValue, LessEqHashsize5) {
    int HASH_SIZE = 97;
    char * yy = "password";
    ASSERT_LE(hash(yy), HASH_SIZE);
}

TEST(hashKeyValue, LessEqHashsize6) {
    int HASH_SIZE = 97;
    char * zz = "evil";
    ASSERT_LE(hash(zz), HASH_SIZE);
}
TEST(hashKeyValue, LessEqHashsize7) {
    int HASH_SIZE = 97;
    char * zzz = "nvkwnvccdsnfcoiwewecoweiojfdcjwieofckljmweiojmcweMOUNTAINSbirthdaypasswordevil";
    ASSERT_LE(hash(zzz), HASH_SIZE);
}


int main(int argc, char **argv){
    testing::InitGoogleTest(&argc, argv);
    return RUN_ALL_TESTS();
}