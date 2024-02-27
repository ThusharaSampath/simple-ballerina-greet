import ballerina/io;

// configurable string shopifyAccessToken = ?;

public function main(int value) returns error? {
    io:println(value);

    if value >= 3 {
        return error("Input should less than 3");
    }
}