.class public final Lcom/tencent/bugly/proguard/ml;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public final Ae:Ljava/lang/String;

.field public final count:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/bugly/proguard/ml;->Ae:Ljava/lang/String;

    iput p2, p0, Lcom/tencent/bugly/proguard/ml;->count:I

    return-void
.end method
