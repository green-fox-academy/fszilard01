-- 024 Hozz l�tre egy interface_svc MS SQL autentik�ci�j� account-ot, minim�lis (public) jogokkal!
-- A jelszava legyen: INTERface

CREATE LOGIN [interface_svc] WITH PASSWORD=N'INTERface' 
MUST_CHANGE, DEFAULT_DATABASE=[master], 
CHECK_EXPIRATION=ON, 
CHECK_POLICY=ON