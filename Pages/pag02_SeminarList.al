page 50102 "CSD Seminar List"
{
    PageType = List;
    ApplicationArea = All;
    SourceTable = "CSD Seminar";
    Caption = 'Seminar List';
    Editable = false;
    CardPageId = 50101;
    UsageCategory = Lists;

    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                field("No."; "No.")
                {
                    ApplicationArea = All;
                }
                field(Name; Name)
                {
                    ApplicationArea = All;
                }
                field("Seminar Duration"; "Seminar Duration")
                {
                    ApplicationArea = All;
                }
                field("Seminar Price"; "Seminar Price")
                {
                    ApplicationArea = All;
                }
                field("Minimum Participants"; "Minimum Participants")
                {
                    ApplicationArea = All;
                }
                field("Maximum Participants"; "Maximum Participants")
                {
                    ApplicationArea = All;
                }

            }
        }
        area(Factboxes)
        {
            systempart("Links"; Links)
            {

            }
            systempart("Notes"; Notes)
            {

            }

        }
    }

    actions
    {
        area(Navigation)
        {
            group("&Seminar")
            {
                action("Co&mment")
                {

                    //RunObject=page "CSD Seminar Comment Sheet";
                    //RunPageLink = "Table Name"= const(Seminar),
                    // "No."=field("No.");

                    Image = Comment;
                    Promoted = true;
                    PromotedIsBig = true;
                    PromotedOnly = true;
                }
                // >> Lab 8 1-2
                action("Ledger Entries")
                {
                    Caption = 'Ledger Entries';
                    RunObject = page "CSD Seminar Ledger Entries";
                    RunPageLink = "Seminar No." = field ("No.");
                    Promoted = true;
                    PromotedCategory = Process;
                    ShortcutKey = "Ctrl+F7";
                    Image = WarrantyLedger;
                }
                // >> Lab 8 1-2

                // >> Lab 8 1-2
                action("&Registrations")
                {
                    Caption = '&Registrations';
                    RunObject = page "CSD Seminar Registration List";
                    RunPageLink = "Seminar No." = field ("No.");
                    Image = Timesheet;
                    Promoted = true;
                    PromotedCategory = Process;
                }
                // << Lab 8 1-2
            }

        }
        area(Processing)
        {
            action("Seminar Registration")
            {
                RunObject = page "CSD Seminar Registration";
                RunPageLink = "Seminar No." = field ("No.");
                RunPageMode = Create;
                Image = NewTimesheet;
                Promoted = true;
                PromotedCategory = New;
            }
        }
        // << Lab 8 1-2

    }
}