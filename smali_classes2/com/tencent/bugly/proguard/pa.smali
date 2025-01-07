.class public final Lcom/tencent/bugly/proguard/pa;
.super Ljava/lang/Object;


# instance fields
.field private final DZ:Lcom/tencent/bugly/proguard/oz;

.field final Ef:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/tencent/bugly/proguard/oz;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/tencent/bugly/proguard/pa;->Ef:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/tencent/bugly/proguard/pa;->DZ:Lcom/tencent/bugly/proguard/oz;

    return-void
.end method
