-- RouteStop entries para la ruta SENA Neiva
-- Usando paradas existentes en Neiva:
-- F2000021: Cra 1 # 45-10 (SENA Industrial Norte)
-- F2000022: Cra 10 # 15-05 (Sur Neiva)
-- Ida: Norte -> Sur (orden 1, 2)
-- Vuelta: Sur -> Norte (orden 1, 2)
INSERT INTO Route.RouteStop (Id, RouteId, StopId, OrderSequence, Status)
SELECT v.Id, v.RouteId, v.StopId, v.OrderSequence, 'Active'
FROM (VALUES
    -- IDA: Casa -> Colegio (Norte -> Sur)
    ('F7000031-0000-4000-8000-000000000031', 'F1000025-0000-4000-8000-000000000025', 'F2000021-0000-4000-8000-000000000021', 1),  -- SENA Norte
    ('F7000032-0000-4000-8000-000000000032', 'F1000025-0000-4000-8000-000000000025', 'F2000022-0000-4000-8000-000000000022', 2),  -- Sur
    
    -- VUELTA: Colegio -> Casa (Sur -> Norte)
    ('F7000033-0000-4000-8000-000000000033', 'F1000025-0000-4000-8000-000000000025', 'F2000022-0000-4000-8000-000000000022', 1),  -- Sur
    ('F7000034-0000-4000-8000-000000000034', 'F1000025-0000-4000-8000-000000000025', 'F2000021-0000-4000-8000-000000000021', 2)   -- SENA Norte
) AS v (Id, RouteId, StopId, OrderSequence)
WHERE NOT EXISTS (SELECT 1 FROM Route.RouteStop rst WHERE rst.RouteId = v.RouteId AND rst.StopId = v.StopId AND rst.OrderSequence = v.OrderSequence);