## 1: Merge data sets

x_total = full_join(X_test, X_train)

## 2: Mean and standard deviation

mean = rowMeans(x_total, na.rm = T)
standard_deviation = apply(x_total, 1, sd)
X_table1 = bind_cols(x_total, tbl_df(mean))
x_table = bind_cols(X_table1, tbl_df(standard_deviation))
x_table = rename(x_table, mean = value, standard_deviation = value1)

## 3: Add new variables

