#!/bin/bash
npx prisma migrate resolve --applied 20231205211834_create_models 2>/dev/null || true
npx prisma migrate resolve --applied 20231205214145_add_group_to_expenses 2>/dev/null || true
npx prisma migrate resolve --applied 20231205214538_change_amount_type 2>/dev/null || true
npx prisma migrate resolve --applied 20231206195936_add_cascades 2>/dev/null || true
npx prisma migrate resolve --applied 20231206201409_add_currency 2>/dev/null || true
npx prisma migrate resolve --applied 20231207005126_reimbursement 2>/dev/null || true
npx prisma migrate resolve --applied 20231208170655_add_timestamps 2>/dev/null || true
npx prisma migrate resolve --applied 20231208195456_add_delete_cascade 2>/dev/null || true
npx prisma migrate resolve --applied 20231215203936_add_shares_in_expenses 2>/dev/null || true
npx prisma migrate resolve --applied 20231215213409_add_split_mode 2>/dev/null || true
npx prisma migrate resolve --applied 20240108174319_add_expense_date 2>/dev/null || true
npx prisma migrate resolve --applied 20240108194443_add_categories 2>/dev/null || true
npx prisma migrate resolve --applied 20240126214121_add_document_urls 2>/dev/null || true
npx prisma migrate resolve --applied 20240128192510_update_document_urls 2>/dev/null || true
npx prisma migrate resolve --applied 20240128193431_update_documents 2>/dev/null || true
npx prisma migrate resolve --applied 20240128202400_add_doc_info 2>/dev/null || true
npx prisma migrate resolve --applied 20240310194006_add_notes_in_expense 2>/dev/null || true
npx prisma migrate resolve --applied 20240414135355_add_activity_log 2>/dev/null || true
npx prisma migrate resolve --applied 20240531154748_add_group_information 2>/dev/null || true
npx prisma migrate resolve --applied 20241103205027_add_recurring_expenses 2>/dev/null || true
npx prisma migrate resolve --applied 20250308000000_add_category_donation 2>/dev/null || true
npx prisma migrate resolve --applied 20250405152338_add_group_currency_code 2>/dev/null || true
npx prisma migrate resolve --applied 20250414213819_add_currency_conversion_in_expense 2>/dev/null || true
npx prisma migrate resolve --applied 20251103161018_add_ondelete_cascade_to_activity_groupid 2>/dev/null || true
npx prisma migrate deploy
npx prisma generate
next build
