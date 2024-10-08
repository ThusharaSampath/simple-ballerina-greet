import ballerina/io;
import ballerina/random;
import ballerina/time;

configurable string testConfig1 = ?;
configurable int testConfig2 = ?;
configurable string testConfig3 = ?;
configurable string testConfig4 = ?;
configurable string testConfig5 = ?;
configurable string testConfig6 = ?;
configurable string testConfig7 = ?;
configurable string testConfig8 = ?;
configurable string testConfig9 = ?;
configurable string testConfig10 = ?;
configurable int testConfig11 = ?;

public function main() returns error? {
    io:println("Hello, World!");
    var currentTime = time:utcNow();
    var formattedTime = time:utcToString(currentTime);
    io:println("Current time: " + formattedTime);

    // randomly exit with an error
    int randomInteger = check random:createIntInRange(1, 10);
    io:println("Random number: " + randomInteger.toString());
    if (randomInteger % 2 == 0) {
        return error("random error");
    }
}
