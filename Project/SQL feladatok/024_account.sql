-- 024 Hozz létre egy interface_svc MS SQL autentikációjú account-ot, minimális (public) jogokkal!
-- A jelszava legyen: INTERface

CREATE LOGIN [interface_svc] WITH PASSWORD=N'INTERface' 
MUST_CHANGE, DEFAULT_DATABASE=[master], 
CHECK_EXPIRATION=ON, 
CHECK_POLICY=ON