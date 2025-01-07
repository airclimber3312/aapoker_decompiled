.class public final Lcom/tencent/bugly/proguard/bd;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/bugly/proguard/bd$a;
    }
.end annotation


# instance fields
.field public cN:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/tencent/bugly/proguard/bd$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/bugly/proguard/bd;->cN:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final an()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/tencent/bugly/proguard/bd$a;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/bugly/proguard/bd;->cN:Ljava/util/ArrayList;

    return-object v0
.end method
