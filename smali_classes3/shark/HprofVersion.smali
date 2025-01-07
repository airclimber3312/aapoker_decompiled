.class public final enum Lshark/HprofVersion;
.super Ljava/lang/Enum;
.source "HprofVersion.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lshark/HprofVersion;",
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
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0008\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lshark/HprofVersion;",
        "",
        "versionString",
        "",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "getVersionString",
        "()Ljava/lang/String;",
        "JDK1_2_BETA3",
        "JDK1_2_BETA4",
        "JDK_6",
        "ANDROID",
        "shark-hprof"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lshark/HprofVersion;

.field public static final enum ANDROID:Lshark/HprofVersion;

.field public static final enum JDK1_2_BETA3:Lshark/HprofVersion;

.field public static final enum JDK1_2_BETA4:Lshark/HprofVersion;

.field public static final enum JDK_6:Lshark/HprofVersion;


# instance fields
.field private final versionString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x4

    new-array v0, v0, [Lshark/HprofVersion;

    new-instance v1, Lshark/HprofVersion;

    const-string v2, "JDK1_2_BETA3"

    const-string v3, "JAVA PROFILE 1.0"

    const/4 v4, 0x0

    .line 7
    invoke-direct {v1, v2, v4, v3}, Lshark/HprofVersion;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lshark/HprofVersion;->JDK1_2_BETA3:Lshark/HprofVersion;

    aput-object v1, v0, v4

    new-instance v1, Lshark/HprofVersion;

    const-string v2, "JDK1_2_BETA4"

    const-string v3, "JAVA PROFILE 1.0.1"

    const/4 v4, 0x1

    .line 8
    invoke-direct {v1, v2, v4, v3}, Lshark/HprofVersion;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lshark/HprofVersion;->JDK1_2_BETA4:Lshark/HprofVersion;

    aput-object v1, v0, v4

    new-instance v1, Lshark/HprofVersion;

    const-string v2, "JDK_6"

    const-string v3, "JAVA PROFILE 1.0.2"

    const/4 v4, 0x2

    .line 9
    invoke-direct {v1, v2, v4, v3}, Lshark/HprofVersion;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lshark/HprofVersion;->JDK_6:Lshark/HprofVersion;

    aput-object v1, v0, v4

    new-instance v1, Lshark/HprofVersion;

    const-string v2, "ANDROID"

    const-string v3, "JAVA PROFILE 1.0.3"

    const/4 v4, 0x3

    .line 10
    invoke-direct {v1, v2, v4, v3}, Lshark/HprofVersion;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lshark/HprofVersion;->ANDROID:Lshark/HprofVersion;

    aput-object v1, v0, v4

    sput-object v0, Lshark/HprofVersion;->$VALUES:[Lshark/HprofVersion;

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

    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lshark/HprofVersion;->versionString:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lshark/HprofVersion;
    .locals 1

    const-class v0, Lshark/HprofVersion;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lshark/HprofVersion;

    return-object p0
.end method

.method public static values()[Lshark/HprofVersion;
    .locals 1

    sget-object v0, Lshark/HprofVersion;->$VALUES:[Lshark/HprofVersion;

    invoke-virtual {v0}, [Lshark/HprofVersion;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lshark/HprofVersion;

    return-object v0
.end method


# virtual methods
.method public final getVersionString()Ljava/lang/String;
    .locals 1

    .line 6
    iget-object v0, p0, Lshark/HprofVersion;->versionString:Ljava/lang/String;

    return-object v0
.end method
