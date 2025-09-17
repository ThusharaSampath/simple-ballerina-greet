import ballerina/io;
import ballerina/lang.runtime;
import ballerina/time;

configurable int v = 15; // by default program will exit without error immediately

public function main() returns error? {

    // simulating runtime error
    if v < 10 {
        io:println("Value is less than 10");
        return error("Input should be greater than 10");
    }

    if v < 20 {
        io:println("Value is less than 20 and greater than 10, exiting the program without error");
        return;
    }

    io:println("Value is greater than 20. I'm starting the timer.");
    var currentTime = time:utcNow();
    var formattedTime = time:utcToString(currentTime);

    var i = 0;
    while (i < v) {
        currentTime = time:utcNow();
        formattedTime = time:utcToString(currentTime);
        io:println("Current time: " + formattedTime);
        runtime:sleep(1);
        i = i + 1;
    }
}
