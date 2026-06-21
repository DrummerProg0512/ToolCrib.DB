-- Supporting index for FK: FK_TransactionAttachments_Users
-- Improves user upload tracking and audit queries
CREATE NONCLUSTERED INDEX [IX_TransactionAttachments_UploadedBy]
	ON [dbo].[TransactionAttachments] ([UploadedBy] ASC);

GO
