-- Supporting index for FK: FK_PartItemsAttachments_Users (missing FK)
-- Add FK constraint for UploadedBy tracking
-- This index improves user upload audit queries
CREATE NONCLUSTERED INDEX [IX_PartItemsAttachments_UploadedBy]
	ON [dbo].[PartItemsAttachments] ([UploadedBy] ASC);

GO
