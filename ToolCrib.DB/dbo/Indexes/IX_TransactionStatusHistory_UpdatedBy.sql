-- Supporting index for FK: FK_TransactionStatusHistory_Users
-- Improves user audit trail for status changes
CREATE NONCLUSTERED INDEX [IX_TransactionStatusHistory_UpdatedBy]
	ON [dbo].[TransactionStatusHistory] ([UpdatedBy] ASC);

GO
