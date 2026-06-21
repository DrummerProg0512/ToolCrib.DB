-- Supporting index for FK: FK_TransactionStatusHistory_TransactionHistory
-- Improves transaction status tracking and CASCADE DELETE performance
CREATE NONCLUSTERED INDEX [IX_TransactionStatusHistory_TransactionID]
	ON [dbo].[TransactionStatusHistory] ([TransactionID] ASC);

GO
