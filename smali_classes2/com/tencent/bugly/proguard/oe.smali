.class public final Lcom/tencent/bugly/proguard/oe;
.super Lcom/tencent/bugly/proguard/ck$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/bugly/proguard/oe$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0008\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0005\u0018\u0000 &2\u00020\u0001:\u0001&B\u0005\u00a2\u0006\u0002\u0010\u0002J!\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u000f\u001a\u00020\n2\u000c\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u0013\u00a2\u0006\u0002\u0010 J\u0019\u0010!\u001a\u00020\"2\u000c\u0010#\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u0013\u00a2\u0006\u0002\u0010$J\u0008\u0010%\u001a\u00020\u001eH\u0016R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u000c\"\u0004\u0008\u0011\u0010\u000eR$\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\u0014\u0018\u00010\u0013X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\u0019\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018R\u001a\u0010\u001a\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001b\u0010\u0006\"\u0004\u0008\u001c\u0010\u0008\u00a8\u0006\'"
    }
    d2 = {
        "Lcom/tencent/rmonitor/looper/meta/StackFrame;",
        "Lcom/tencent/bugly/common/utils/RecyclablePool$Recyclable;",
        "()V",
        "endTime",
        "",
        "getEndTime",
        "()J",
        "setEndTime",
        "(J)V",
        "frameCount",
        "",
        "getFrameCount",
        "()I",
        "setFrameCount",
        "(I)V",
        "frameIndex",
        "getFrameIndex",
        "setFrameIndex",
        "stack",
        "",
        "Ljava/lang/StackTraceElement;",
        "getStack",
        "()[Ljava/lang/StackTraceElement;",
        "setStack",
        "([Ljava/lang/StackTraceElement;)V",
        "[Ljava/lang/StackTraceElement;",
        "startTime",
        "getStartTime",
        "setStartTime",
        "init",
        "",
        "stackTrace",
        "(I[Ljava/lang/StackTraceElement;)V",
        "isSameStackTrace",
        "",
        "fromStack",
        "([Ljava/lang/StackTraceElement;)Z",
        "reset",
        "Companion",
        "bugly-pro_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# static fields
.field private static final CX:Lcom/tencent/bugly/proguard/od;

.field public static final CY:Lcom/tencent/bugly/proguard/oe$a;


# instance fields
.field public CT:J

.field public CU:I

.field public CV:I

.field public CW:[Ljava/lang/StackTraceElement;

.field public startTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/tencent/bugly/proguard/oe$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tencent/bugly/proguard/oe$a;-><init>(B)V

    sput-object v0, Lcom/tencent/bugly/proguard/oe;->CY:Lcom/tencent/bugly/proguard/oe$a;

    new-instance v0, Lcom/tencent/bugly/proguard/od;

    const-class v1, Lcom/tencent/bugly/proguard/oe;

    const/16 v2, 0x32

    invoke-direct {v0, v1, v2}, Lcom/tencent/bugly/proguard/od;-><init>(Ljava/lang/Class;I)V

    sput-object v0, Lcom/tencent/bugly/proguard/oe;->CX:Lcom/tencent/bugly/proguard/od;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/bugly/proguard/ck$b;-><init>()V

    return-void
.end method

.method public static final synthetic hV()Lcom/tencent/bugly/proguard/od;
    .locals 1

    sget-object v0, Lcom/tencent/bugly/proguard/oe;->CX:Lcom/tencent/bugly/proguard/od;

    return-object v0
.end method


# virtual methods
.method public final a(I[Ljava/lang/StackTraceElement;)V
    .locals 2

    const-string v0, "stackTrace"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput p1, p0, Lcom/tencent/bugly/proguard/oe;->CU:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/bugly/proguard/oe;->startTime:J

    iput-wide v0, p0, Lcom/tencent/bugly/proguard/oe;->CT:J

    const/4 p1, 0x1

    iput p1, p0, Lcom/tencent/bugly/proguard/oe;->CV:I

    iput-object p2, p0, Lcom/tencent/bugly/proguard/oe;->CW:[Ljava/lang/StackTraceElement;

    return-void
.end method

.method public final reset()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/bugly/proguard/oe;->startTime:J

    iput-wide v0, p0, Lcom/tencent/bugly/proguard/oe;->CT:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/bugly/proguard/oe;->CV:I

    iput v0, p0, Lcom/tencent/bugly/proguard/oe;->CU:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/oe;->CW:[Ljava/lang/StackTraceElement;

    return-void
.end method
