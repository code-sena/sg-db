-- Add Direction column to RouteExecution table
-- This column stores the trip direction (Ida/Vuelta) to support round-trip routes

ALTER TABLE Route.RouteExecution
ADD Direction VARCHAR(10) NOT NULL DEFAULT 'Ida';