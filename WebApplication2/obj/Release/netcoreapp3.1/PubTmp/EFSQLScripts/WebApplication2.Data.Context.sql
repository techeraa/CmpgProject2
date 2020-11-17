IF OBJECT_ID(N'[__EFMigrationsHistory]') IS NULL
BEGIN
    CREATE TABLE [__EFMigrationsHistory] (
        [MigrationId] nvarchar(150) NOT NULL,
        [ProductVersion] nvarchar(32) NOT NULL,
        CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY ([MigrationId])
    );
END;

GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20201114114729_Cmpg3232DataImported')
BEGIN
    CREATE TABLE [CMPG323project2dataset] (
        [Id] int NOT NULL IDENTITY,
        [EmployeeNumber] nvarchar(max) NULL,
        [age] int NOT NULL,
        [attrition] nvarchar(max) NULL,
        [BusinessTravel] nvarchar(max) NULL,
        [DailyRate] int NOT NULL,
        [Department] nvarchar(max) NULL,
        [DistanceFromHome] nvarchar(max) NULL,
        [Education] nvarchar(max) NULL,
        [EducationField] nvarchar(max) NULL,
        [EmployeeCount] nvarchar(max) NULL,
        [EnvironmentSatisfaction] nvarchar(max) NULL,
        [Gender] nvarchar(max) NULL,
        [HourlyRate] int NOT NULL,
        [JobInvolvement] nvarchar(max) NULL,
        [JobLevel] nvarchar(max) NULL,
        [JobRole] nvarchar(max) NULL,
        [JobSatisfaction] nvarchar(max) NULL,
        [MaritalStatus] nvarchar(max) NULL,
        [MonthlyIncome] int NOT NULL,
        [MonthlyRate] int NOT NULL,
        [NumCompaniesWorked] nvarchar(max) NULL,
        [Over18] nvarchar(max) NULL,
        [OverTime] nvarchar(max) NULL,
        [PercentSalaryHike] int NOT NULL,
        [PerformanceRating] int NOT NULL,
        [RelationshipSatisfaction] nvarchar(max) NULL,
        [StandardHours] int NOT NULL,
        [StockOptionLevel] nvarchar(max) NULL,
        [TotalWorkingYears] nvarchar(max) NULL,
        [TrainingTimesLastYear] nvarchar(max) NULL,
        [WorkLifeBalance] nvarchar(max) NULL,
        [YearsAtCompany] nvarchar(max) NULL,
        [YearsInCurrentRole] nvarchar(max) NULL,
        [YearsSinceLastPromotion] nvarchar(max) NULL,
        [YearsWithCurrManager] nvarchar(max) NULL,
        CONSTRAINT [PK_CMPG323project2dataset] PRIMARY KEY ([Id])
    );
END;

GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20201114114729_Cmpg3232DataImported')
BEGIN
    INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
    VALUES (N'20201114114729_Cmpg3232DataImported', N'3.1.9');
END;

GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20201115082749_Add_OwnerId')
BEGIN
    ALTER TABLE [CMPG323project2dataset] ADD [OwnerId] nvarchar(max) NULL;
END;

GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20201115082749_Add_OwnerId')
BEGIN
    INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
    VALUES (N'20201115082749_Add_OwnerId', N'3.1.9');
END;

GO

