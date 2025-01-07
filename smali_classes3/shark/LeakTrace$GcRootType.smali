.class public final enum Lshark/LeakTrace$GcRootType;
.super Ljava/lang/Enum;
.source "LeakTrace.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lshark/LeakTrace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "GcRootType"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lshark/LeakTrace$GcRootType$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lshark/LeakTrace$GcRootType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u000e\u0008\u0086\u0001\u0018\u0000 \u00102\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0010B\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000f\u00a8\u0006\u0011"
    }
    d2 = {
        "Lshark/LeakTrace$GcRootType;",
        "",
        "description",
        "",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "getDescription",
        "()Ljava/lang/String;",
        "JNI_GLOBAL",
        "JNI_LOCAL",
        "JAVA_FRAME",
        "NATIVE_STACK",
        "STICKY_CLASS",
        "THREAD_BLOCK",
        "MONITOR_USED",
        "THREAD_OBJECT",
        "JNI_MONITOR",
        "Companion",
        "shark"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lshark/LeakTrace$GcRootType;

.field public static final Companion:Lshark/LeakTrace$GcRootType$Companion;

.field public static final enum JAVA_FRAME:Lshark/LeakTrace$GcRootType;

.field public static final enum JNI_GLOBAL:Lshark/LeakTrace$GcRootType;

.field public static final enum JNI_LOCAL:Lshark/LeakTrace$GcRootType;

.field public static final enum JNI_MONITOR:Lshark/LeakTrace$GcRootType;

.field public static final enum MONITOR_USED:Lshark/LeakTrace$GcRootType;

.field public static final enum NATIVE_STACK:Lshark/LeakTrace$GcRootType;

.field public static final enum STICKY_CLASS:Lshark/LeakTrace$GcRootType;

.field public static final enum THREAD_BLOCK:Lshark/LeakTrace$GcRootType;

.field public static final enum THREAD_OBJECT:Lshark/LeakTrace$GcRootType;


# instance fields
.field private final description:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v0, 0x9

    new-array v0, v0, [Lshark/LeakTrace$GcRootType;

    new-instance v1, Lshark/LeakTrace$GcRootType;

    const-string v2, "JNI_GLOBAL"

    const-string v3, "Global variable in native code"

    const/4 v4, 0x0

    .line 136
    invoke-direct {v1, v2, v4, v3}, Lshark/LeakTrace$GcRootType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lshark/LeakTrace$GcRootType;->JNI_GLOBAL:Lshark/LeakTrace$GcRootType;

    aput-object v1, v0, v4

    new-instance v1, Lshark/LeakTrace$GcRootType;

    const-string v2, "JNI_LOCAL"

    const-string v3, "Local variable in native code"

    const/4 v4, 0x1

    .line 137
    invoke-direct {v1, v2, v4, v3}, Lshark/LeakTrace$GcRootType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lshark/LeakTrace$GcRootType;->JNI_LOCAL:Lshark/LeakTrace$GcRootType;

    aput-object v1, v0, v4

    new-instance v1, Lshark/LeakTrace$GcRootType;

    const-string v2, "JAVA_FRAME"

    const-string v3, "Java local variable"

    const/4 v4, 0x2

    .line 138
    invoke-direct {v1, v2, v4, v3}, Lshark/LeakTrace$GcRootType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lshark/LeakTrace$GcRootType;->JAVA_FRAME:Lshark/LeakTrace$GcRootType;

    aput-object v1, v0, v4

    new-instance v1, Lshark/LeakTrace$GcRootType;

    const-string v2, "NATIVE_STACK"

    const-string v3, "Input or output parameters in native code"

    const/4 v4, 0x3

    .line 139
    invoke-direct {v1, v2, v4, v3}, Lshark/LeakTrace$GcRootType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lshark/LeakTrace$GcRootType;->NATIVE_STACK:Lshark/LeakTrace$GcRootType;

    aput-object v1, v0, v4

    new-instance v1, Lshark/LeakTrace$GcRootType;

    const-string v2, "STICKY_CLASS"

    const-string v3, "System class"

    const/4 v4, 0x4

    .line 140
    invoke-direct {v1, v2, v4, v3}, Lshark/LeakTrace$GcRootType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lshark/LeakTrace$GcRootType;->STICKY_CLASS:Lshark/LeakTrace$GcRootType;

    aput-object v1, v0, v4

    new-instance v1, Lshark/LeakTrace$GcRootType;

    const-string v2, "THREAD_BLOCK"

    const-string v3, "Thread block"

    const/4 v4, 0x5

    .line 141
    invoke-direct {v1, v2, v4, v3}, Lshark/LeakTrace$GcRootType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lshark/LeakTrace$GcRootType;->THREAD_BLOCK:Lshark/LeakTrace$GcRootType;

    aput-object v1, v0, v4

    new-instance v1, Lshark/LeakTrace$GcRootType;

    const-string v2, "MONITOR_USED"

    const-string v3, "Monitor (anything that called the wait() or notify() methods, or that is synchronized.)"

    const/4 v4, 0x6

    .line 142
    invoke-direct {v1, v2, v4, v3}, Lshark/LeakTrace$GcRootType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lshark/LeakTrace$GcRootType;->MONITOR_USED:Lshark/LeakTrace$GcRootType;

    aput-object v1, v0, v4

    new-instance v1, Lshark/LeakTrace$GcRootType;

    const-string v2, "THREAD_OBJECT"

    const-string v3, "Thread object"

    const/4 v4, 0x7

    .line 145
    invoke-direct {v1, v2, v4, v3}, Lshark/LeakTrace$GcRootType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lshark/LeakTrace$GcRootType;->THREAD_OBJECT:Lshark/LeakTrace$GcRootType;

    aput-object v1, v0, v4

    new-instance v1, Lshark/LeakTrace$GcRootType;

    const-string v2, "JNI_MONITOR"

    const-string v3, "Root JNI monitor"

    const/16 v4, 0x8

    .line 146
    invoke-direct {v1, v2, v4, v3}, Lshark/LeakTrace$GcRootType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lshark/LeakTrace$GcRootType;->JNI_MONITOR:Lshark/LeakTrace$GcRootType;

    aput-object v1, v0, v4

    sput-object v0, Lshark/LeakTrace$GcRootType;->$VALUES:[Lshark/LeakTrace$GcRootType;

    new-instance v0, Lshark/LeakTrace$GcRootType$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lshark/LeakTrace$GcRootType$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lshark/LeakTrace$GcRootType;->Companion:Lshark/LeakTrace$GcRootType$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 135
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lshark/LeakTrace$GcRootType;->description:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lshark/LeakTrace$GcRootType;
    .locals 1

    const-class v0, Lshark/LeakTrace$GcRootType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lshark/LeakTrace$GcRootType;

    return-object p0
.end method

.method public static values()[Lshark/LeakTrace$GcRootType;
    .locals 1

    sget-object v0, Lshark/LeakTrace$GcRootType;->$VALUES:[Lshark/LeakTrace$GcRootType;

    invoke-virtual {v0}, [Lshark/LeakTrace$GcRootType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lshark/LeakTrace$GcRootType;

    return-object v0
.end method


# virtual methods
.method public final getDescription()Ljava/lang/String;
    .locals 1

    .line 135
    iget-object v0, p0, Lshark/LeakTrace$GcRootType;->description:Ljava/lang/String;

    return-object v0
.end method
