exports.handler = async (event) => {
    console.log("Lambda function executed with event:", event);
    return {
        statusCode: 200,
        body: JSON.stringify({ message: "Hello from Lambda!" }),
    };
};

