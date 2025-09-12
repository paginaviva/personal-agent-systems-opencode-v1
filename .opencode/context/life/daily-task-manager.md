# Daily Task Manager - Enhanced Life Management System

## TODAY'S DASHBOARD
**Date**: {{ DATE }}
**Day of Week**: {{ DAY }}
**Energy Forecast**: {{ ENERGY_LEVEL }}
**Primary Focus**: {{ MAIN_OBJECTIVE }}

---

## TASK PRIORITY MATRIX

### 🔥 URGENT & IMPORTANT (Do First)
**Time Block**: {{ HIGH_PRIORITY_TIME }}
- [ ] **{{ TASK_1 }}** | Est: {{ TIME_1 }} | Deadline: {{ DEADLINE_1 }}
- [ ] **{{ TASK_2 }}** | Est: {{ TIME_2 }} | Deadline: {{ DEADLINE_2 }}
- [ ] **{{ TASK_3 }}** | Est: {{ TIME_3 }} | Deadline: {{ DEADLINE_3 }}

**Progress**: {{ URGENT_PROGRESS }}% | **Time Used**: {{ URGENT_TIME_USED }}

### ⚡ IMPORTANT & NOT URGENT (Schedule)
**Time Block**: {{ MEDIUM_PRIORITY_TIME }}
- [ ] **{{ TASK_4 }}** | Est: {{ TIME_4 }} | Goal: {{ GOAL_1 }}
- [ ] **{{ TASK_5 }}** | Est: {{ TIME_5 }} | Goal: {{ GOAL_2 }}
- [ ] **{{ TASK_6 }}** | Est: {{ TIME_6 }} | Goal: {{ GOAL_3 }}

**Progress**: {{ IMPORTANT_PROGRESS }}% | **Time Used**: {{ IMPORTANT_TIME_USED }}

### 📋 URGENT & NOT IMPORTANT (Delegate/Minimize)
**Time Block**: {{ LOW_PRIORITY_TIME }}
- [ ] **{{ TASK_7 }}** | Est: {{ TIME_7 }} | Can delegate to: {{ DELEGATE_1 }}
- [ ] **{{ TASK_8 }}** | Est: {{ TIME_8 }} | Can delegate to: {{ DELEGATE_2 }}

**Progress**: {{ URGENT_NI_PROGRESS }}% | **Time Used**: {{ URGENT_NI_TIME_USED }}

### 🗑️ NOT URGENT & NOT IMPORTANT (Eliminate)
- [ ] **{{ TASK_9 }}** | Reason to eliminate: {{ ELIMINATE_REASON_1 }}
- [ ] **{{ TASK_10 }}** | Reason to eliminate: {{ ELIMINATE_REASON_2 }}

---

## TIME BLOCK SCHEDULE

### Morning Power Block ({{ MORNING_START }} - {{ MORNING_END }})
**Energy Level**: HIGH | **Focus**: Deep Work
- **{{ MORNING_TIME_1 }}**: {{ MORNING_TASK_1 }}
- **{{ MORNING_TIME_2 }}**: {{ MORNING_TASK_2 }}
- **{{ MORNING_TIME_3 }}**: {{ MORNING_TASK_3 }}

**Completion Status**: {{ MORNING_COMPLETION }}%

### Midday Execution Block ({{ MIDDAY_START }} - {{ MIDDAY_END }})
**Energy Level**: MEDIUM | **Focus**: Communication & Collaboration
- **{{ MIDDAY_TIME_1 }}**: {{ MIDDAY_TASK_1 }}
- **{{ MIDDAY_TIME_2 }}**: {{ MIDDAY_TASK_2 }}
- **{{ MIDDAY_TIME_3 }}**: {{ MIDDAY_TASK_3 }}

**Completion Status**: {{ MIDDAY_COMPLETION }}%

### Afternoon Processing Block ({{ AFTERNOON_START }} - {{ AFTERNOON_END }})
**Energy Level**: LOW-MEDIUM | **Focus**: Administrative & Planning
- **{{ AFTERNOON_TIME_1 }}**: {{ AFTERNOON_TASK_1 }}
- **{{ AFTERNOON_TIME_2 }}**: {{ AFTERNOON_TASK_2 }}
- **{{ AFTERNOON_TIME_3 }}**: {{ AFTERNOON_TASK_3 }}

**Completion Status**: {{ AFTERNOON_COMPLETION }}%

### Evening Reflection Block ({{ EVENING_START }} - {{ EVENING_END }})
**Energy Level**: RECOVERY | **Focus**: Review & Preparation
- **{{ EVENING_TIME_1 }}**: {{ EVENING_TASK_1 }}
- **{{ EVENING_TIME_2 }}**: {{ EVENING_TASK_2 }}
- **{{ EVENING_TIME_3 }}**: {{ EVENING_TASK_3 }}

**Completion Status**: {{ EVENING_COMPLETION }}%

---

## HABIT TRACKING DASHBOARD

### Core Daily Habits
- [ ] **Morning Routine** (6:00-8:00 AM) | Streak: {{ MORNING_STREAK }} days
- [ ] **MIT Completion** (First 2 hours) | Streak: {{ MIT_STREAK }} days
- [ ] **Communication Batching** (3 windows) | Streak: {{ COMM_STREAK }} days
- [ ] **Evening Planning** (9:30-10:00 PM) | Streak: {{ EVENING_STREAK }} days
- [ ] **No-Screen Wind-down** (After 10 PM) | Streak: {{ SCREEN_STREAK }} days

### Weekly Habits
- [ ] **Monday Planning** | This week: {{ MONDAY_PLANNING }}
- [ ] **Friday Review** | This week: {{ FRIDAY_REVIEW }}
- [ ] **Weekend Personal Time** | This week: {{ WEEKEND_PERSONAL }}

### Health & Wellness Tracking
- [ ] **Water Intake** (8 glasses) | Today: {{ WATER_COUNT }}/8
- [ ] **Movement/Exercise** (30 min) | Today: {{ EXERCISE_TIME }} min
- [ ] **Healthy Meals** (3 planned) | Today: {{ MEAL_COUNT }}/3
- [ ] **Sleep Quality** (7-8 hours) | Last night: {{ SLEEP_HOURS }} hours

---

## DISTRACTION & FOCUS MANAGEMENT

### Focus Protection Checklist
- [ ] **Phone in airplane mode** during deep work blocks
- [ ] **All non-essential apps closed** during MIT time
- [ ] **Notification settings** optimized for focus windows
- [ ] **Physical environment** cleared and organized
- [ ] **Single-tasking commitment** maintained

### Distraction Log
**Time**: {{ DISTRACTION_TIME_1 }} | **Type**: {{ DISTRACTION_TYPE_1 }} | **Duration**: {{ DISTRACTION_DURATION_1 }} | **Trigger**: {{ DISTRACTION_TRIGGER_1 }}
**Time**: {{ DISTRACTION_TIME_2 }} | **Type**: {{ DISTRACTION_TYPE_2 }} | **Duration**: {{ DISTRACTION_DURATION_2 }} | **Trigger**: {{ DISTRACTION_TRIGGER_2 }}

### Context Switching Prevention
- **Current Task**: {{ CURRENT_TASK }}
- **Start Time**: {{ TASK_START_TIME }}
- **Estimated End**: {{ TASK_END_TIME }}
- **Next Task**: {{ NEXT_TASK }}
- **Transition Buffer**: {{ TRANSITION_TIME }} minutes

---

## ENERGY & MOOD TRACKING

### Energy Levels Throughout Day
- **6 AM**: {{ ENERGY_6AM }}/10 | **Mood**: {{ MOOD_6AM }}
- **9 AM**: {{ ENERGY_9AM }}/10 | **Mood**: {{ MOOD_9AM }}
- **12 PM**: {{ ENERGY_12PM }}/10 | **Mood**: {{ MOOD_12PM }}
- **3 PM**: {{ ENERGY_3PM }}/10 | **Mood**: {{ MOOD_3PM }}
- **6 PM**: {{ ENERGY_6PM }}/10 | **Mood**: {{ MOOD_6PM }}
- **9 PM**: {{ ENERGY_9PM }}/10 | **Mood**: {{ MOOD_9PM }}

### Energy Optimization Notes
**What gave me energy today**: {{ ENERGY_BOOSTERS }}
**What drained my energy**: {{ ENERGY_DRAINS }}
**Optimal work time discovered**: {{ OPTIMAL_TIME }}
**Adjustments for tomorrow**: {{ ENERGY_ADJUSTMENTS }}

---

## GOAL ALIGNMENT TRACKER

### Monthly Goal Progress
1. **{{ MONTHLY_GOAL_1 }}**: {{ GOAL_1_PROGRESS }}% | Today's contribution: {{ GOAL_1_TODAY }}
2. **{{ MONTHLY_GOAL_2 }}**: {{ GOAL_2_PROGRESS }}% | Today's contribution: {{ GOAL_2_TODAY }}
3. **{{ MONTHLY_GOAL_3 }}**: {{ GOAL_3_PROGRESS }}% | Today's contribution: {{ GOAL_3_TODAY }}

### Weekly Goal Progress
1. **{{ WEEKLY_GOAL_1 }}**: {{ WEEKLY_1_PROGRESS }}% | Today's contribution: {{ WEEKLY_1_TODAY }}
2. **{{ WEEKLY_GOAL_2 }}**: {{ WEEKLY_2_PROGRESS }}% | Today's contribution: {{ WEEKLY_2_TODAY }}
3. **{{ WEEKLY_GOAL_3 }}**: {{ WEEKLY_3_PROGRESS }}% | Today's contribution: {{ WEEKLY_3_TODAY }}

---

## QUICK CAPTURE INBOX

### New Tasks (To be processed)
- {{ INBOX_TASK_1 }} | Added: {{ INBOX_TIME_1 }}
- {{ INBOX_TASK_2 }} | Added: {{ INBOX_TIME_2 }}
- {{ INBOX_TASK_3 }} | Added: {{ INBOX_TIME_3 }}

### Ideas & Insights
- {{ IDEA_1 }} | Time: {{ IDEA_TIME_1 }}
- {{ IDEA_2 }} | Time: {{ IDEA_TIME_2 }}
- {{ IDEA_3 }} | Time: {{ IDEA_TIME_3 }}

### Follow-up Items
- {{ FOLLOWUP_1 }} | Due: {{ FOLLOWUP_DUE_1 }}
- {{ FOLLOWUP_2 }} | Due: {{ FOLLOWUP_DUE_2 }}
- {{ FOLLOWUP_3 }} | Due: {{ FOLLOWUP_DUE_3 }}

---

## DAILY METRICS SUMMARY

### Productivity Metrics
- **Tasks Completed**: {{ TASKS_COMPLETED }}/{{ TASKS_PLANNED }}
- **Deep Work Hours**: {{ DEEP_WORK_HOURS }}/{{ DEEP_WORK_PLANNED }}
- **Focus Score**: {{ FOCUS_SCORE }}/10
- **Energy Utilization**: {{ ENERGY_UTILIZATION }}%

### Time Allocation
- **High-Priority Tasks**: {{ HIGH_PRIORITY_TIME_ACTUAL }} (Planned: {{ HIGH_PRIORITY_TIME_PLANNED }})
- **Communication**: {{ COMMUNICATION_TIME_ACTUAL }} (Planned: {{ COMMUNICATION_TIME_PLANNED }})
- **Administrative**: {{ ADMIN_TIME_ACTUAL }} (Planned: {{ ADMIN_TIME_PLANNED }})
- **Learning/Development**: {{ LEARNING_TIME_ACTUAL }} (Planned: {{ LEARNING_TIME_PLANNED }})

### Habit Compliance
- **Morning Routine**: {{ MORNING_COMPLIANCE }}%
- **Time Blocking**: {{ TIME_BLOCK_COMPLIANCE }}%
- **Communication Boundaries**: {{ COMM_BOUNDARY_COMPLIANCE }}%
- **Evening Routine**: {{ EVENING_COMPLIANCE }}%

---

## TOMORROW'S PREPARATION

### Top 3 Priorities for Tomorrow
1. **{{ TOMORROW_PRIORITY_1 }}** | Time Block: {{ TOMORROW_TIME_1 }} | Prep Needed: {{ TOMORROW_PREP_1 }}
2. **{{ TOMORROW_PRIORITY_2 }}** | Time Block: {{ TOMORROW_TIME_2 }} | Prep Needed: {{ TOMORROW_PREP_2 }}
3. **{{ TOMORROW_PRIORITY_3 }}** | Time Block: {{ TOMORROW_TIME_3 }} | Prep Needed: {{ TOMORROW_PREP_3 }}

### Environment Setup
- [ ] **Workspace prepared** for tomorrow's first task
- [ ] **Tools and resources** gathered and accessible
- [ ] **Calendar reviewed** for conflicts or adjustments needed
- [ ] **Energy management** plan based on tomorrow's demands

### Potential Obstacles & Solutions
- **Obstacle 1**: {{ OBSTACLE_1 }} | **Solution**: {{ SOLUTION_1 }}
- **Obstacle 2**: {{ OBSTACLE_2 }} | **Solution**: {{ SOLUTION_2 }}
- **Obstacle 3**: {{ OBSTACLE_3 }} | **Solution**: {{ SOLUTION_3 }}

---

## SYSTEM IMPROVEMENT NOTES

### What Worked Well Today
- {{ SUCCESS_1 }}
- {{ SUCCESS_2 }}
- {{ SUCCESS_3 }}

### What Needs Adjustment
- {{ ADJUSTMENT_1 }}
- {{ ADJUSTMENT_2 }}
- {{ ADJUSTMENT_3 }}

### System Tweaks for Tomorrow
- {{ TWEAK_1 }}
- {{ TWEAK_2 }}
- {{ TWEAK_3 }}

---

**Last Updated**: {{ TIMESTAMP }}
**Next Review**: {{ NEXT_REVIEW_TIME }}
**System Status**: {{ SYSTEM_STATUS }}