page 50100 "Radio Show List"
{
    PageType = List;
    SourceTable = "Radio Show";
    ApplicationArea = Basic;
    UsageCategory = Lists;
    CardPageId = "Radio Show Card";

    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                field("No."; Rec."No.") { ApplicationArea = Basic; }
                field("Radio Show Type"; Rec."Radio Show Type") { ApplicationArea = Basic; }
                field("Name"; Rec."Name")
                {
                    ApplicationArea = Basic;
                }
                field("Run Time"; Rec."Run Time")
                {
                    ApplicationArea = Basic;
                }
                field("Host Code";
                Rec.
                    "Host Code")
                {
                    ApplicationArea = Basic;
                }
                field("Host Name"; Rec."Host Name")
                {
                    ApplicationArea = Basic;
                }
                field("Average Listeners"; Rec."Average Listeners")
                {
                    ApplicationArea = Basic;
                }
                field("Audience Share"; Rec."Audience Share")
                {
                    ApplicationArea = Basic;
                }
                field("Advertaising Revenue"; Rec."Advertaising Revenue")
                {
                    ApplicationArea = Basic;
                }
                field("Royalty Cost"; Rec."Royalty Cost")
                {
                    ApplicationArea = Basic;
                }
                //  {
                //     ApplicationArea = All;

            }
        }
    }
}