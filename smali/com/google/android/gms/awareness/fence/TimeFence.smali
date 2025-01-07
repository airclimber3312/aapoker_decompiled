.class public final Lcom/google/android/gms/awareness/fence/TimeFence;
.super Ljava/lang/Object;


# static fields
.field public static final DAY_OF_WEEK_FRIDAY:I = 0x6

.field public static final DAY_OF_WEEK_MONDAY:I = 0x2

.field public static final DAY_OF_WEEK_SATURDAY:I = 0x7

.field public static final DAY_OF_WEEK_SUNDAY:I = 0x1

.field public static final DAY_OF_WEEK_THURSDAY:I = 0x5

.field public static final DAY_OF_WEEK_TUESDAY:I = 0x3

.field public static final DAY_OF_WEEK_WEDNESDAY:I = 0x4

.field public static final TIME_INSTANT_SUNRISE:I = 0x1

.field public static final TIME_INSTANT_SUNSET:I = 0x2

.field public static final TIME_INTERVAL_AFTERNOON:I = 0x5

.field public static final TIME_INTERVAL_EVENING:I = 0x6

.field public static final TIME_INTERVAL_HOLIDAY:I = 0x3

.field public static final TIME_INTERVAL_MORNING:I = 0x4

.field public static final TIME_INTERVAL_NIGHT:I = 0x7

.field public static final TIME_INTERVAL_WEEKDAY:I = 0x1

.field public static final TIME_INTERVAL_WEEKEND:I = 0x2


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static aroundTimeInstant(IJJ)Lcom/google/android/gms/awareness/fence/AwarenessFence;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    invoke-static {p1, p2, p3, p4}, Lcom/google/android/gms/internal/zzbkw;->zzd(JJ)Lcom/google/android/gms/internal/zzbkw;

    move-result-object p0

    :goto_0
    invoke-static {p0}, Lcom/google/android/gms/internal/zzbke;->zza(Lcom/google/android/gms/internal/zzbkw;)Lcom/google/android/gms/internal/zzbke;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const/16 p3, 0x28

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p3, "Unknown time instant label = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1, p2, p3, p4}, Lcom/google/android/gms/internal/zzbkw;->zzc(JJ)Lcom/google/android/gms/internal/zzbkw;

    move-result-object p0

    goto :goto_0
.end method

.method public static inDailyInterval(Ljava/util/TimeZone;JJ)Lcom/google/android/gms/awareness/fence/AwarenessFence;
    .locals 6

    const/4 v0, 0x2

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/zzbkx;->zza(ILjava/util/TimeZone;JJ)Lcom/google/android/gms/internal/zzbkx;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/zzbke;->zza(Lcom/google/android/gms/internal/zzbkx;)Lcom/google/android/gms/internal/zzbke;

    move-result-object p0

    return-object p0
.end method

.method public static inFridayInterval(Ljava/util/TimeZone;JJ)Lcom/google/android/gms/awareness/fence/AwarenessFence;
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0xa

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/zzbkx;->zza(ILjava/util/TimeZone;JJ)Lcom/google/android/gms/internal/zzbkx;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/zzbke;->zza(Lcom/google/android/gms/internal/zzbkx;)Lcom/google/android/gms/internal/zzbke;

    move-result-object p0

    return-object p0
.end method

.method public static inInterval(JJ)Lcom/google/android/gms/awareness/fence/AwarenessFence;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/gms/internal/zzbkx;->zze(JJ)Lcom/google/android/gms/internal/zzbkx;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/zzbke;->zza(Lcom/google/android/gms/internal/zzbkx;)Lcom/google/android/gms/internal/zzbke;

    move-result-object p0

    return-object p0
.end method

.method public static inIntervalOfDay(ILjava/util/TimeZone;JJ)Lcom/google/android/gms/awareness/fence/AwarenessFence;
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/google/android/gms/internal/zzbkx;->zzb(ILjava/util/TimeZone;JJ)Lcom/google/android/gms/internal/zzbkx;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/zzbke;->zza(Lcom/google/android/gms/internal/zzbkx;)Lcom/google/android/gms/internal/zzbke;

    move-result-object p0

    return-object p0
.end method

.method public static inMondayInterval(Ljava/util/TimeZone;JJ)Lcom/google/android/gms/awareness/fence/AwarenessFence;
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x6

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/zzbkx;->zza(ILjava/util/TimeZone;JJ)Lcom/google/android/gms/internal/zzbkx;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/zzbke;->zza(Lcom/google/android/gms/internal/zzbkx;)Lcom/google/android/gms/internal/zzbke;

    move-result-object p0

    return-object p0
.end method

.method public static inSaturdayInterval(Ljava/util/TimeZone;JJ)Lcom/google/android/gms/awareness/fence/AwarenessFence;
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0xb

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/zzbkx;->zza(ILjava/util/TimeZone;JJ)Lcom/google/android/gms/internal/zzbkx;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/zzbke;->zza(Lcom/google/android/gms/internal/zzbkx;)Lcom/google/android/gms/internal/zzbke;

    move-result-object p0

    return-object p0
.end method

.method public static inSundayInterval(Ljava/util/TimeZone;JJ)Lcom/google/android/gms/awareness/fence/AwarenessFence;
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x5

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/zzbkx;->zza(ILjava/util/TimeZone;JJ)Lcom/google/android/gms/internal/zzbkx;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/zzbke;->zza(Lcom/google/android/gms/internal/zzbkx;)Lcom/google/android/gms/internal/zzbke;

    move-result-object p0

    return-object p0
.end method

.method public static inThursdayInterval(Ljava/util/TimeZone;JJ)Lcom/google/android/gms/awareness/fence/AwarenessFence;
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0x9

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/zzbkx;->zza(ILjava/util/TimeZone;JJ)Lcom/google/android/gms/internal/zzbkx;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/zzbke;->zza(Lcom/google/android/gms/internal/zzbkx;)Lcom/google/android/gms/internal/zzbke;

    move-result-object p0

    return-object p0
.end method

.method public static inTimeInterval(I)Lcom/google/android/gms/awareness/fence/AwarenessFence;
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/zzbky;->zzm(II)Lcom/google/android/gms/internal/zzbky;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/zzbke;->zza(Lcom/google/android/gms/internal/zzbky;)Lcom/google/android/gms/internal/zzbke;

    move-result-object p0

    return-object p0
.end method

.method public static inTuesdayInterval(Ljava/util/TimeZone;JJ)Lcom/google/android/gms/awareness/fence/AwarenessFence;
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x7

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/zzbkx;->zza(ILjava/util/TimeZone;JJ)Lcom/google/android/gms/internal/zzbkx;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/zzbke;->zza(Lcom/google/android/gms/internal/zzbkx;)Lcom/google/android/gms/internal/zzbke;

    move-result-object p0

    return-object p0
.end method

.method public static inWednesdayInterval(Ljava/util/TimeZone;JJ)Lcom/google/android/gms/awareness/fence/AwarenessFence;
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0x8

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/zzbkx;->zza(ILjava/util/TimeZone;JJ)Lcom/google/android/gms/internal/zzbkx;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/zzbke;->zza(Lcom/google/android/gms/internal/zzbkx;)Lcom/google/android/gms/internal/zzbke;

    move-result-object p0

    return-object p0
.end method
