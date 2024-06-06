import ballerina/io;

configurable int configValue = 100;

public function main(int paraValue) returns error? {
    io:println("Config value: " + configValue.toString());
    io:println("Para value: " + paraValue.toString());

    if paraValue < 20 {
        return error("Input should be greater than 20");
    }
}