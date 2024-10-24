import ballerina/io;
import ballerina/http;

configurable string testConfig = ?;

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
        // io:println("path: " + path);
        return payload;
    }
}
