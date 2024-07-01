import ballerina/io;
import ballerina/random;
import ballerina/time;

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
