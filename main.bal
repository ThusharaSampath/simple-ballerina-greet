import ballerina/io;
import ballerina/time;

configurable string shopifyAccessToken = ?;

public function main() {
    io:println("Hello, World!");
    var currentTime = time:utcNow();
    var formattedTime = time:utcToString(currentTime);
    io:println("Current time: " + formattedTime);
}
