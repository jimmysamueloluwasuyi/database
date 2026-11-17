USE cape_codd;


-- 2.40
-- SELECT SKU, SKU_Description, WAREHOUSE.WarehouseID, WarehouseCity, WarehouseState
-- FROM INVENTORY, WAREHOUSE
-- WHERE INVENTORY.WarehouseID = WAREHOUSE.WarehouseID
-- AND (WarehouseCity = 'Atlanta'
-- OR WarehouseCity = 'Bangor'
-- OR WarehouseCity = 'Chicago');

-- 2.41
-- SELECT SKU, SKU_Description, WAREHOUSE.WarehouseID, WarehouseCity, WarehouseState
-- FROM INVENTORY, WAREHOUSE
-- WHERE INVENTORY.WarehouseID = WAREHOUSE.WarehouseID
-- AND WarehouseCity IN ('Atlanta', 'Bangor', 'Chicago');

-- 2.42
-- SELECT SKU, SKU_Description, WAREHOUSE.WarehouseID, WarehouseCity, WarehouseState
-- FROM INVENTORY, WAREHOUSE
-- WHERE INVENTORY.WarehouseID = WAREHOUSE.WarehouseID
-- AND WarehouseCity != 'Atlanta'
-- AND WarehouseCity != 'Bangor'
-- AND WarehouseCity != 'Chicago';

-- 2.43
-- SELECT SKU, SKU_Description, WAREHOUSE.WarehouseID, WarehouseCity, WarehouseState
-- FROM INVENTORY, WAREHOUSE
-- WHERE INVENTORY.WarehouseID = WAREHOUSE.WarehouseID
-- AND WarehouseCity NOT IN ('Atlanta', 'Bangor', 'Chicago');

-- 2.44
-- SELECT CONCAT(SKU_Description, ' is located in ', WarehouseCity) AS ItemLocation
-- FROM INVENTORY, WAREHOUSE
-- WHERE INVENTORY.WarehouseID = WAREHOUSE.WarehouseID

-- 2.45
-- SELECT SKU, SKU_Description, WarehouseID
-- FROM INVENTORY
-- WHERE WarehouseID IN (
--  SELECT WarehouseID
--  FROM WAREHOUSE
--  WHERE Manager = 'Lucille Smith'
-- );

-- 2.46
-- SELECT I.SKU, I.SKU_Description, I.WarehouseID
-- FROM INVENTORY I
-- JOIN WAREHOUSE W
-- WHERE I.WarehouseID = W.WarehouseID
-- AND W.Manager = 'Lucille Smith';


-- 2.47
-- SELECT I.SKU, I.SKU_Description, I.WarehouseID
-- FROM INVENTORY I
-- INNER JOIN WAREHOUSE W
-- ON I.WarehouseID = W.WarehouseID
-- WHERE W.Manager = 'Lucille Smith';
