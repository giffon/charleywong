package charleywong.views;

using charleywong.EntityTools;

class PrivacyView extends View {
    override public function title() return 'Privacy Policy';
    override public function description() return 'Charley Wong 和你查 Privacy Policy';
    override function canonical() return Path.join([ServerMain.domain, "privacy"]);
    override public function render() {
        return super.render();
    }

    override public function lang() return "en";

    override function body() return jsx('
        <body className=${bodyClasses().join(" ")} {...bodyAttributes()}>
            <div className="content container max-w-screen-lg mx-auto px-4 leading-loose">
                ${bodyContent()}
            </div>
        </body>
    ');

    override function bodyContent() {
        final name = "Charley Wong 和你查";
        return jsx('
            <Fragment>
                <h1 className="text-xl">Privacy Policy</h1>
                <p>This Privacy Policy explains how information is collected, used and disclosed by ${name} with respect to user’s access and use of our service through the website (Referred to below as “${name}”).</p>

                <h2 className="text-lg">1. Information collection</h2>
                <p>When using ${name}, we ask certain information from you:</p>
                <p>“Personal Information” We don\'t collect any personal data, except that we use 3rd party statistic SDK for analytic purpose. Users who contact us via email, the email addresses and information you submitted voluntarily will also be collected.</p>
                <p>For any enquiry about your data, including request to be deleted, email to admin@charleywong.info</p>

                <h2 className="text-lg">2. Information usage</h2>
                <p>Your information will not be shared with others and is only used internally for the purposes described below:</p>
                <ul>
                    <li>to provide our services or information you request;</li>
                    <li>to respond to your emails, submissions, questions, comments, requests, and complaints;</li>
                    <li>to analyze usage and trends with anonymous user data, and to improve the quality of our service and user experience;</li>
                    <li>to send you confirmations, updates, security alerts, and support and administrative messages and otherwise facilitate your use of, and our administration and operation of, our services;</li>
                </ul>

                <h2 className="text-lg">3. Cookies</h2>
                <p>Cookies are optional on this website. We use them to collect anonymous user data for analytic purpose.</p>

                <h2 className="text-lg">4. Changes</h2>
                <p>This Privacy Policy may be revised and modified at some time in the future. Please check back periodically to keep informed of updates or changes to this Privacy Policy. By continuing to access and to use ${name}, you are agreeing to be bound by the revised policy.</p>
            </Fragment>
        ');
    }
}