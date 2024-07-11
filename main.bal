import ballerina/io;
import ballerina/lang.runtime;
import ballerina/time;

configurable int v = 2000;

public function main() returns error? {

    if v < 1000 {
        io:println("Value is less than 1000");
        return error("Input should be greater than 20");
    } else {
        io:println("Value is greater than or equal to 1000");
    }

    io:println("Hello, World! I'm starting the timer.");
    var currentTime = time:utcNow();
    var formattedTime = time:utcToString(currentTime);

    // print while time in while loop for 10 secs
    var i = 0;
    while (i < 120) {
        currentTime = time:utcNow();
        formattedTime = time:utcToString(currentTime);
        if (i % 10 == 0) {
            io:println("Current time: " + formattedTime);
        }
        runtime:sleep(1);
        i = i + 1;
    }
}
