import ballerina/io;
import ballerina/http;

configurable string greeting = ?;

service / on new http:Listener(8090) {
    resource function post greeting/hello() returns string {
        io:println("Invoked hello resource");
        return "Hello, World!";
    }
}
