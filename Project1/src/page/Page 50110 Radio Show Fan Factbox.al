page 50110 "Radio Show Fan Factbox"
{

    Caption = 'Radio Show Fan Factbox';
    PageType = ListPart;
    SourceTable = "Radio Show Fan";

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field(Name; Rec.Name)
                {
                    ToolTip = 'Specifies the value of the Name field';
                    ApplicationArea = All;
                }
                field("E-mail"; Rec."E-mail")
                {
                    ToolTip = 'Specifies the value of the E-mail field';
                    ApplicationArea = All;
                }
                field("Last Contacted"; Rec."Last Contacted")
                {
                    ToolTip = 'Specifies the value of the Last Contacted field';
                    ApplicationArea = All;
                }
            }
        }
    }

}
