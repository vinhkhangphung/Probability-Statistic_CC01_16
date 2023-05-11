lm_cpuMark = lm(cpuMark ~ cores, data = clean_data)
lm_threadMark = lm(threadMark ~ cores, data = clean_data)

summary(lm_cpuMark)
summary(lm_threadMark)
