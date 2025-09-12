# Habit & Task Completion Tracker - Progress Monitoring System

## DAILY COMPLETION DASHBOARD
**Date**: {{ DATE }}
**Week of Year**: {{ WEEK_NUMBER }}
**Month**: {{ MONTH }}
**Quarter**: {{ QUARTER }}

---

## CORE HABIT TRACKING MATRIX

### 🌅 MORNING ROUTINE HABITS
| Habit | Target | Completed | Streak | This Week | This Month | Notes |
|-------|--------|-----------|--------|-----------|------------|-------|
| Wake up by 6:00 AM | Daily | {{ WAKE_COMPLETED }} | {{ WAKE_STREAK }} days | {{ WAKE_WEEK }}/7 | {{ WAKE_MONTH }}/{{ MONTH_DAYS }} | {{ WAKE_NOTES }} |
| Drink 16oz water immediately | Daily | {{ WATER_COMPLETED }} | {{ WATER_STREAK }} days | {{ WATER_WEEK }}/7 | {{ WATER_MONTH }}/{{ MONTH_DAYS }} | {{ WATER_NOTES }} |
| 5-minute stretching/movement | Daily | {{ STRETCH_COMPLETED }} | {{ STRETCH_STREAK }} days | {{ STRETCH_WEEK }}/7 | {{ STRETCH_MONTH }}/{{ MONTH_DAYS }} | {{ STRETCH_NOTES }} |
| Coffee + priority review | Daily | {{ COFFEE_COMPLETED }} | {{ COFFEE_STREAK }} days | {{ COFFEE_WEEK }}/7 | {{ COFFEE_MONTH }}/{{ MONTH_DAYS }} | {{ COFFEE_NOTES }} |
| Start MIT within 30 min | Daily | {{ MIT_START_COMPLETED }} | {{ MIT_START_STREAK }} days | {{ MIT_START_WEEK }}/7 | {{ MIT_START_MONTH }}/{{ MONTH_DAYS }} | {{ MIT_START_NOTES }} |

**Morning Routine Completion**: {{ MORNING_COMPLETION }}% | **Average This Month**: {{ MORNING_MONTH_AVG }}%

### 🎯 PRODUCTIVITY HABITS
| Habit | Target | Completed | Streak | This Week | This Month | Notes |
|-------|--------|-----------|--------|-----------|------------|-------|
| Complete MIT before 10 AM | Daily | {{ MIT_COMPLETED }} | {{ MIT_STREAK }} days | {{ MIT_WEEK }}/7 | {{ MIT_MONTH }}/{{ MONTH_DAYS }} | {{ MIT_NOTES }} |
| 2+ hours deep work | Daily | {{ DEEP_WORK_COMPLETED }} | {{ DEEP_WORK_STREAK }} days | {{ DEEP_WORK_WEEK }}/7 | {{ DEEP_WORK_MONTH }}/{{ MONTH_DAYS }} | {{ DEEP_WORK_NOTES }} |
| Batch communication 3x | Daily | {{ COMM_BATCH_COMPLETED }} | {{ COMM_BATCH_STREAK }} days | {{ COMM_BATCH_WEEK }}/7 | {{ COMM_BATCH_MONTH }}/{{ MONTH_DAYS }} | {{ COMM_BATCH_NOTES }} |
| Single-task focus | Daily | {{ SINGLE_TASK_COMPLETED }} | {{ SINGLE_TASK_STREAK }} days | {{ SINGLE_TASK_WEEK }}/7 | {{ SINGLE_TASK_MONTH }}/{{ MONTH_DAYS }} | {{ SINGLE_TASK_NOTES }} |
| No phone during deep work | Daily | {{ NO_PHONE_COMPLETED }} | {{ NO_PHONE_STREAK }} days | {{ NO_PHONE_WEEK }}/7 | {{ NO_PHONE_MONTH }}/{{ MONTH_DAYS }} | {{ NO_PHONE_NOTES }} |

**Productivity Habits Completion**: {{ PRODUCTIVITY_COMPLETION }}% | **Average This Month**: {{ PRODUCTIVITY_MONTH_AVG }}%

### 🌙 EVENING ROUTINE HABITS
| Habit | Target | Completed | Streak | This Week | This Month | Notes |
|-------|--------|-----------|--------|-----------|------------|-------|
| Work shutdown by 6 PM | Daily | {{ SHUTDOWN_COMPLETED }} | {{ SHUTDOWN_STREAK }} days | {{ SHUTDOWN_WEEK }}/7 | {{ SHUTDOWN_MONTH }}/{{ MONTH_DAYS }} | {{ SHUTDOWN_NOTES }} |
| Tomorrow's planning | Daily | {{ PLANNING_COMPLETED }} | {{ PLANNING_STREAK }} days | {{ PLANNING_WEEK }}/7 | {{ PLANNING_MONTH }}/{{ MONTH_DAYS }} | {{ PLANNING_NOTES }} |
| Reflection/journaling | Daily | {{ JOURNAL_COMPLETED }} | {{ JOURNAL_STREAK }} days | {{ JOURNAL_WEEK }}/7 | {{ JOURNAL_MONTH }}/{{ MONTH_DAYS }} | {{ JOURNAL_NOTES }} |
| No screens after 10 PM | Daily | {{ NO_SCREEN_COMPLETED }} | {{ NO_SCREEN_STREAK }} days | {{ NO_SCREEN_WEEK }}/7 | {{ NO_SCREEN_MONTH }}/{{ MONTH_DAYS }} | {{ NO_SCREEN_NOTES }} |
| In bed by 10:30 PM | Daily | {{ BED_COMPLETED }} | {{ BED_STREAK }} days | {{ BED_WEEK }}/7 | {{ BED_MONTH }}/{{ MONTH_DAYS }} | {{ BED_NOTES }} |

**Evening Routine Completion**: {{ EVENING_COMPLETION }}% | **Average This Month**: {{ EVENING_MONTH_AVG }}%

### 💪 HEALTH & WELLNESS HABITS
| Habit | Target | Completed | Streak | This Week | This Month | Notes |
|-------|--------|-----------|--------|-----------|------------|-------|
| 8 glasses of water | Daily | {{ WATER_8_COMPLETED }} | {{ WATER_8_STREAK }} days | {{ WATER_8_WEEK }}/7 | {{ WATER_8_MONTH }}/{{ MONTH_DAYS }} | {{ WATER_8_NOTES }} |
| 30+ minutes exercise | Daily | {{ EXERCISE_COMPLETED }} | {{ EXERCISE_STREAK }} days | {{ EXERCISE_WEEK }}/7 | {{ EXERCISE_MONTH }}/{{ MONTH_DAYS }} | {{ EXERCISE_NOTES }} |
| 3 planned healthy meals | Daily | {{ MEALS_COMPLETED }} | {{ MEALS_STREAK }} days | {{ MEALS_WEEK }}/7 | {{ MEALS_MONTH }}/{{ MONTH_DAYS }} | {{ MEALS_NOTES }} |
| 7-8 hours sleep | Daily | {{ SLEEP_COMPLETED }} | {{ SLEEP_STREAK }} days | {{ SLEEP_WEEK }}/7 | {{ SLEEP_MONTH }}/{{ MONTH_DAYS }} | {{ SLEEP_NOTES }} |
| Mindfulness/meditation | Daily | {{ MINDFUL_COMPLETED }} | {{ MINDFUL_STREAK }} days | {{ MINDFUL_WEEK }}/7 | {{ MINDFUL_MONTH }}/{{ MONTH_DAYS }} | {{ MINDFUL_NOTES }} |

**Health Habits Completion**: {{ HEALTH_COMPLETION }}% | **Average This Month**: {{ HEALTH_MONTH_AVG }}%

---

## WEEKLY HABIT TRACKING

### 📅 WEEKLY RHYTHMS
| Habit | Target | This Week | Last 4 Weeks | Notes |
|-------|--------|-----------|--------------|-------|
| Monday planning session | Weekly | {{ MONDAY_PLAN_COMPLETED }} | {{ MONDAY_PLAN_4WEEK }}/4 | {{ MONDAY_PLAN_NOTES }} |
| Friday week review | Weekly | {{ FRIDAY_REVIEW_COMPLETED }} | {{ FRIDAY_REVIEW_4WEEK }}/4 | {{ FRIDAY_REVIEW_NOTES }} |
| Weekend personal projects | Weekly | {{ WEEKEND_PROJECT_COMPLETED }} | {{ WEEKEND_PROJECT_4WEEK }}/4 | {{ WEEKEND_PROJECT_NOTES }} |
| Sunday preparation | Weekly | {{ SUNDAY_PREP_COMPLETED }} | {{ SUNDAY_PREP_4WEEK }}/4 | {{ SUNDAY_PREP_NOTES }} |
| Weekly relationship time | Weekly | {{ RELATIONSHIP_TIME_COMPLETED }} | {{ RELATIONSHIP_TIME_4WEEK }}/4 | {{ RELATIONSHIP_TIME_NOTES }} |

**Weekly Habits Completion**: {{ WEEKLY_COMPLETION }}% | **4-Week Average**: {{ WEEKLY_4WEEK_AVG }}%

---

## TASK COMPLETION TRACKING

### 🎯 TODAY'S TASK COMPLETION
| Priority Level | Planned | Completed | Completion Rate | Time Spent | Notes |
|----------------|---------|-----------|-----------------|------------|-------|
| Urgent & Important | {{ UI_PLANNED }} | {{ UI_COMPLETED }} | {{ UI_RATE }}% | {{ UI_TIME }} | {{ UI_NOTES }} |
| Important & Not Urgent | {{ INU_PLANNED }} | {{ INU_COMPLETED }} | {{ INU_RATE }}% | {{ INU_TIME }} | {{ INU_NOTES }} |
| Urgent & Not Important | {{ UNI_PLANNED }} | {{ UNI_COMPLETED }} | {{ UNI_RATE }}% | {{ UNI_TIME }} | {{ UNI_NOTES }} |
| Neither Urgent nor Important | {{ NUNI_PLANNED }} | {{ NUNI_COMPLETED }} | {{ NUNI_RATE }}% | {{ NUNI_TIME }} | {{ NUNI_NOTES }} |

**Overall Task Completion**: {{ OVERALL_TASK_COMPLETION }}%

### 📊 WEEKLY TASK PERFORMANCE
| Day | Tasks Planned | Tasks Completed | Completion Rate | Deep Work Hours |
|-----|---------------|-----------------|-----------------|-----------------|
| Monday | {{ MON_PLANNED }} | {{ MON_COMPLETED }} | {{ MON_RATE }}% | {{ MON_DEEP }} |
| Tuesday | {{ TUE_PLANNED }} | {{ TUE_COMPLETED }} | {{ TUE_RATE }}% | {{ TUE_DEEP }} |
| Wednesday | {{ WED_PLANNED }} | {{ WED_COMPLETED }} | {{ WED_RATE }}% | {{ WED_DEEP }} |
| Thursday | {{ THU_PLANNED }} | {{ THU_COMPLETED }} | {{ THU_RATE }}% | {{ THU_DEEP }} |
| Friday | {{ FRI_PLANNED }} | {{ FRI_COMPLETED }} | {{ FRI_RATE }}% | {{ FRI_DEEP }} |
| Saturday | {{ SAT_PLANNED }} | {{ SAT_COMPLETED }} | {{ SAT_RATE }}% | {{ SAT_DEEP }} |
| Sunday | {{ SUN_PLANNED }} | {{ SUN_COMPLETED }} | {{ SUN_RATE }}% | {{ SUN_DEEP }} |

**Weekly Averages**: Tasks {{ WEEK_AVG_COMPLETION }}% | Deep Work {{ WEEK_AVG_DEEP }} hrs/day

---

## STREAK ANALYSIS & MOTIVATION

### 🔥 CURRENT STREAKS (Top Performers)
1. **{{ TOP_STREAK_1_HABIT }}**: {{ TOP_STREAK_1_DAYS }} days
2. **{{ TOP_STREAK_2_HABIT }}**: {{ TOP_STREAK_2_DAYS }} days
3. **{{ TOP_STREAK_3_HABIT }}**: {{ TOP_STREAK_3_DAYS }} days
4. **{{ TOP_STREAK_4_HABIT }}**: {{ TOP_STREAK_4_DAYS }} days
5. **{{ TOP_STREAK_5_HABIT }}**: {{ TOP_STREAK_5_DAYS }} days

### ⚠️ HABITS NEEDING ATTENTION (Broken Streaks)
1. **{{ BROKEN_STREAK_1_HABIT }}**: Last completed {{ BROKEN_STREAK_1_DAYS }} days ago
2. **{{ BROKEN_STREAK_2_HABIT }}**: Last completed {{ BROKEN_STREAK_2_DAYS }} days ago
3. **{{ BROKEN_STREAK_3_HABIT }}**: Last completed {{ BROKEN_STREAK_3_DAYS }} days ago

### 🎯 STREAK GOALS & MILESTONES
| Habit | Current Streak | Next Milestone | Days to Go | Reward Planned |
|-------|----------------|----------------|------------|----------------|
| {{ GOAL_HABIT_1 }} | {{ GOAL_CURRENT_1 }} | {{ GOAL_MILESTONE_1 }} | {{ GOAL_DAYS_1 }} | {{ GOAL_REWARD_1 }} |
| {{ GOAL_HABIT_2 }} | {{ GOAL_CURRENT_2 }} | {{ GOAL_MILESTONE_2 }} | {{ GOAL_DAYS_2 }} | {{ GOAL_REWARD_2 }} |
| {{ GOAL_HABIT_3 }} | {{ GOAL_CURRENT_3 }} | {{ GOAL_MILESTONE_3 }} | {{ GOAL_DAYS_3 }} | {{ GOAL_REWARD_3 }} |

---

## HABIT PERFORMANCE ANALYTICS

### 📈 MONTHLY TRENDS
**Best Performing Category**: {{ BEST_CATEGORY }} ({{ BEST_CATEGORY_SCORE }}% completion)
**Most Improved Category**: {{ IMPROVED_CATEGORY }} (+{{ IMPROVEMENT_PERCENTAGE }}% from last month)
**Needs Focus Category**: {{ FOCUS_CATEGORY }} ({{ FOCUS_CATEGORY_SCORE }}% completion)

### 🔍 PATTERN RECOGNITION
**Best Day of Week**: {{ BEST_DAY }} ({{ BEST_DAY_SCORE }}% avg completion)
**Challenging Day**: {{ CHALLENGING_DAY }} ({{ CHALLENGING_DAY_SCORE }}% avg completion)
**Optimal Time for Habits**: {{ OPTIMAL_TIME }}
**Common Failure Points**: {{ FAILURE_POINTS }}

### 💡 SUCCESS FACTORS
**What helps me succeed**:
1. {{ SUCCESS_FACTOR_1 }}
2. {{ SUCCESS_FACTOR_2 }}
3. {{ SUCCESS_FACTOR_3 }}

**What derails my habits**:
1. {{ DERAIL_FACTOR_1 }}
2. {{ DERAIL_FACTOR_2 }}
3. {{ DERAIL_FACTOR_3 }}

---

## HABIT STACKING & CONNECTIONS

### 🔗 SUCCESSFUL HABIT CHAINS
1. **Morning Chain**: {{ MORNING_CHAIN_SUCCESS }}% success rate
   - {{ MORNING_CHAIN_HABITS }}
   
2. **Work Chain**: {{ WORK_CHAIN_SUCCESS }}% success rate
   - {{ WORK_CHAIN_HABITS }}
   
3. **Evening Chain**: {{ EVENING_CHAIN_SUCCESS }}% success rate
   - {{ EVENING_CHAIN_HABITS }}

### ⚡ KEYSTONE HABITS (High Impact)
1. **{{ KEYSTONE_1 }}**: Influences {{ KEYSTONE_1_INFLUENCES }}
2. **{{ KEYSTONE_2 }}**: Influences {{ KEYSTONE_2_INFLUENCES }}
3. **{{ KEYSTONE_3 }}**: Influences {{ KEYSTONE_3_INFLUENCES }}

---

## COMPLETION REWARDS & MOTIVATION

### 🏆 EARNED REWARDS THIS WEEK
- [ ] **{{ REWARD_1 }}** - Earned by {{ REWARD_1_CRITERIA }}
- [ ] **{{ REWARD_2 }}** - Earned by {{ REWARD_2_CRITERIA }}
- [ ] **{{ REWARD_3 }}** - Earned by {{ REWARD_3_CRITERIA }}

### 🎁 UPCOMING REWARD OPPORTUNITIES
- **{{ UPCOMING_REWARD_1 }}** - Need {{ UPCOMING_CRITERIA_1 }}
- **{{ UPCOMING_REWARD_2 }}** - Need {{ UPCOMING_CRITERIA_2 }}
- **{{ UPCOMING_REWARD_3 }}** - Need {{ UPCOMING_CRITERIA_3 }}

### 📝 HABIT COMMITMENT RENEWAL
**I commit to focusing on these 3 habits this week**:
1. {{ FOCUS_HABIT_1 }} - **Why**: {{ FOCUS_WHY_1 }}
2. {{ FOCUS_HABIT_2 }} - **Why**: {{ FOCUS_WHY_2 }}
3. {{ FOCUS_HABIT_3 }} - **Why**: {{ FOCUS_WHY_3 }}

---

## SYSTEM OPTIMIZATION NOTES

### 🔧 HABIT ADJUSTMENTS NEEDED
1. **{{ ADJUSTMENT_HABIT_1 }}**: {{ ADJUSTMENT_CHANGE_1 }}
2. **{{ ADJUSTMENT_HABIT_2 }}**: {{ ADJUSTMENT_CHANGE_2 }}
3. **{{ ADJUSTMENT_HABIT_3 }}**: {{ ADJUSTMENT_CHANGE_3 }}

### 📊 TRACKING IMPROVEMENTS
**What's working well in my tracking**: {{ TRACKING_SUCCESS }}
**What needs improvement**: {{ TRACKING_IMPROVEMENT }}
**New metric to track**: {{ NEW_METRIC }}

### 🎯 NEXT WEEK'S FOCUS
**Primary habit goal**: {{ NEXT_WEEK_GOAL }}
**Support strategy**: {{ NEXT_WEEK_STRATEGY }}
**Accountability measure**: {{ NEXT_WEEK_ACCOUNTABILITY }}

---

## MONTHLY HABIT REVIEW
*(Complete on last day of month)*

### 🏅 MONTH'S BIGGEST WINS
1. **Habit Victory**: {{ MONTH_HABIT_WIN }}
2. **Streak Achievement**: {{ MONTH_STREAK_WIN }}
3. **System Improvement**: {{ MONTH_SYSTEM_WIN }}

### 📈 MONTHLY STATISTICS
- **Overall Habit Completion**: {{ MONTH_OVERALL }}%
- **Best Week**: Week {{ MONTH_BEST_WEEK }} ({{ MONTH_BEST_WEEK_SCORE }}%)
- **Most Consistent Habit**: {{ MONTH_CONSISTENT_HABIT }}
- **Most Improved Habit**: {{ MONTH_IMPROVED_HABIT }}

### 🎯 NEXT MONTH'S FOCUS
**New habit to introduce**: {{ NEXT_MONTH_NEW_HABIT }}
**Habit to eliminate**: {{ NEXT_MONTH_ELIMINATE_HABIT }}
**System to optimize**: {{ NEXT_MONTH_OPTIMIZE }}

---

**Last Updated**: {{ TIMESTAMP }}
**Overall System Health**: {{ SYSTEM_HEALTH }}/10
**Motivation Level**: {{ MOTIVATION_LEVEL }}/10
**Next Review**: {{ NEXT_REVIEW }}