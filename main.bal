import ballerina/io;
import ballerina/time;
import ballerina/lang.runtime;

public function main() {
    io:println("Hello, World!");
    var currentTime = time:utcNow();
    var formattedTime = time:utcToString(currentTime);
    io:println("Current time: " + formattedTime);
    io:println("I'm going to stay here forever!");
    while (true) {
        runtime:sleep(60);
        io:println("I'm still here!");
    }
}
