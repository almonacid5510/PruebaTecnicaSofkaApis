package users;

import com.intuit.karate.junit5.Karate;

class TestRunner {
    @Karate.Test
    Karate testUsers() {
        return Karate.run("user-test.feature").relativeTo(getClass());
    }
}