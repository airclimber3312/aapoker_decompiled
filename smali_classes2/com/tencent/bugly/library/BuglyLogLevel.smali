.class public interface abstract Lcom/tencent/bugly/library/BuglyLogLevel;
.super Ljava/lang/Object;


# static fields
.field public static final LEVEL_DEBUG:I

.field public static final LEVEL_ERROR:I

.field public static final LEVEL_INFO:I

.field public static final LEVEL_OFF:I

.field public static final LEVEL_VERBOS:I

.field public static final LEVEL_WARN:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/tencent/bugly/proguard/kl;->yk:Lcom/tencent/bugly/proguard/kl;

    iget v0, v0, Lcom/tencent/bugly/proguard/kl;->value:I

    sput v0, Lcom/tencent/bugly/library/BuglyLogLevel;->LEVEL_OFF:I

    sget-object v0, Lcom/tencent/bugly/proguard/kl;->yl:Lcom/tencent/bugly/proguard/kl;

    iget v0, v0, Lcom/tencent/bugly/proguard/kl;->value:I

    sput v0, Lcom/tencent/bugly/library/BuglyLogLevel;->LEVEL_ERROR:I

    sget-object v0, Lcom/tencent/bugly/proguard/kl;->ym:Lcom/tencent/bugly/proguard/kl;

    iget v0, v0, Lcom/tencent/bugly/proguard/kl;->value:I

    sput v0, Lcom/tencent/bugly/library/BuglyLogLevel;->LEVEL_WARN:I

    sget-object v0, Lcom/tencent/bugly/proguard/kl;->yn:Lcom/tencent/bugly/proguard/kl;

    iget v0, v0, Lcom/tencent/bugly/proguard/kl;->value:I

    sput v0, Lcom/tencent/bugly/library/BuglyLogLevel;->LEVEL_INFO:I

    sget-object v0, Lcom/tencent/bugly/proguard/kl;->yo:Lcom/tencent/bugly/proguard/kl;

    iget v0, v0, Lcom/tencent/bugly/proguard/kl;->value:I

    sput v0, Lcom/tencent/bugly/library/BuglyLogLevel;->LEVEL_DEBUG:I

    sget-object v0, Lcom/tencent/bugly/proguard/kl;->yp:Lcom/tencent/bugly/proguard/kl;

    iget v0, v0, Lcom/tencent/bugly/proguard/kl;->value:I

    sput v0, Lcom/tencent/bugly/library/BuglyLogLevel;->LEVEL_VERBOS:I

    return-void
.end method
