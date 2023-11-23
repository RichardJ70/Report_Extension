/// <summary>
/// Payment Hist. Overv. Contrsum (ID 50100) extends Record Payment History Overview.
/// </summary>
reportextension 50100 "Payment Hist. Overv. Contrsum" extends "Payment History Overview"
{
    RDLCLayout = './src/ReportExt/PaymentHistoryOverviewControlsum.rdlc';

    dataset
    {
        add("Payment History")
        {
            column(Checksum_PaymentHistory; Checksum) { }
            column(Checksum_Lbl_PaymentHistory; "Payment History".FieldCaption(Checksum)) { }
            column(PrintChecksum; PrintChecksum) { }
        }
    }

    requestpage
    {
        layout
        {
            addlast(Content)
            {
                field(PrintChecksum; PrintChecksum)
                {
                    ApplicationArea = All;
                    Caption = 'Print Checksum';
                    ToolTip = 'Print Checksum';
                }
            }
        }
    }

    var
        PrintChecksum: Boolean;
}