page 50101 "Radio Show Card"
{
    PageType = Card;
    SourceTable = "Radio Show";

    layout
    {
        area(Content)
        {
            group(General)
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
                field("Host Name";
                Rec.
                    "Host Name")
                {
                    ApplicationArea = Basic;
                }
                field("Average Listeners";
                Rec.
                    "Average Listeners")
                {
                    ApplicationArea = Basic;
                }
                field("Audience Share";
                Rec.
                    "Audience Share")
                {
                    ApplicationArea = Basic;
                }
                field("Advertaising Revenue";
                Rec.
                    "Advertaising Revenue")
                {
                    ApplicationArea = Basic;
                }
                field("Royalty Cost";
                Rec.
                    "Royalty Cost")
                {
                    ApplicationArea = Basic;
                }
            }
        }
    }
}