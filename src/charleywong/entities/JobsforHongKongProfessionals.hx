package charleywong.entities;

class JobsforHongKongProfessionals implements Entity {
    public final id = "jobhunthk";
    public final name = [
        en => "Jobs for Hong Kong Professionals"
    ];
    public final webpages:Array<WebPage> = [
        {
            url: "http://www.topexecutive.com"
        },
        {
            url: "https://www.facebook.com/jobhunthk/",
            meta: [
                "id" => "929016753908567",
                "about" => "提供一個免費的平台協助大家找尋理想的工作",
                "categories" => [
                    "Recruiter",
                    "Business Consultant"
                ],
                "addr" => "Bonham Strand, Sheung Wan",
                "area" => "Hong Kong",
                "email" => "career@topexecutive.com"
            ]
        }
    ];
    public final posts:Array<Post> = [
        {
            url: "https://www.facebook.com/jobhunthk/posts/1636545723155663"
        },
        {
            url: "https://www.facebook.com/jobhunthk/posts/1621125288031040"
        },
        {
            url: "https://www.facebook.com/jobhunthk/posts/1749301218546779"
        }
    ];
    public final tags:Array<Tag> = [];
}

