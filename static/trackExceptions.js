window.onerror = function (message, source, lineno, colno, error)
{
    if (typeof ga === "function")
    {
        ga('send', 'exception', {
            "exDescription": source + ":" + lineno + ": " + message
        });
    }
};