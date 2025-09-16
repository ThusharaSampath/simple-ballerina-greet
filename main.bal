import ballerina/io;
import ballerina/http;

configurable string testConfig = ?;
configurable int testConfigInt = ?;

// service / on new http:Listener(8090) {
//     resource function post [string path](http:Request req) returns string|error|http:Response {
//         string payload = check req.getTextPayload();
//         io:println("payload: " + payload);
//         io:println("path: " + path);
//         return payload;
//     }
// }


service /hello on new http:Listener(8090) {
    resource function post .(http:Request req) returns string|error|http:Response {
        string payload = check req.getTextPayload();
        io:println("payload: " + payload);
        return payload;
    }
}

service /worlds on new http:Listener(8091) {
    resource function post .(http:Request req) returns string|error|http:Response {
        string payload = check req.getTextPayload();
        io:println("payload: " + payload);
        return payload;
    }

    resource function get .(http:Request req) returns string|error|http:Response {
        return "Hello, World!";
    }
}
