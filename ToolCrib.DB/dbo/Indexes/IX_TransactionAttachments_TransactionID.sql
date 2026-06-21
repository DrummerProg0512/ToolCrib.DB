-- Supporting index for FK: FK_TransactionAttachments_TransactionHistory
-- Improves transaction attachment lookups and CASCADE DELETE performance
CREATE NONCLUSTERED INDEX [IX_TransactionAttachments_TransactionID]
	ON [dbo].[TransactionAttachments] ([TransactionID] ASC);

GO
