USE db_churn;
GO

DROP VIEW IF EXISTS vw_ChurnData;
DROP VIEW IF EXISTS vw_JoinData;
GO

CREATE VIEW vw_ChurnData AS
SELECT * FROM prod_Churn
WHERE Customer_Status IN ('Churned', 'Stayed');
GO

CREATE VIEW vw_JoinData AS
SELECT * FROM prod_Churn
WHERE Customer_Status = 'Joined';
GO
