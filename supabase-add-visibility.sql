-- Add visibility column to church_knowledge table
-- Values: 'public' (safe for website chatbot) or 'private' (volunteer SMS / dashboard only)

ALTER TABLE church_knowledge
ADD COLUMN IF NOT EXISTS visibility TEXT NOT NULL DEFAULT 'public'
CHECK (visibility IN ('public', 'private'));

-- Set default visibility based on existing categories
UPDATE church_knowledge SET visibility = 'private' WHERE category IN ('volunteer_procedures', 'ai_ben_rules', 'app');

-- Everything else stays 'public' by default (general, sunday_schedule, first_visit,
-- worship_style, youth, kids, online, ministries, volunteer_duties, contact, events)

COMMENT ON COLUMN church_knowledge.visibility IS 'public = website chatbot can access, private = volunteer SMS and dashboard only';
