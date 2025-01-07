.class public final Lcom/netease/nis/alivedetected/e/b;
.super Ljava/lang/Object;
.source "Constants.java"


# static fields
.field public static a:[Ljava/lang/String; = null

.field public static b:I = 0x0

.field public static c:I = -0x1

.field public static d:Ljava/lang/String; = "1"

.field public static e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "verify.dun.163.com"

    const-string v1, "verify.dun.163yun.com"

    .line 1
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netease/nis/alivedetected/e/b;->a:[Ljava/lang/String;

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/netease/nis/alivedetected/e/b;->e:Ljava/util/List;

    return-void
.end method
