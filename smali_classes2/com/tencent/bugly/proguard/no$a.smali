.class final Lcom/tencent/bugly/proguard/no$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/bugly/proguard/no;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field public BK:Ljava/lang/String;

.field public BL:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/bugly/proguard/no$a;->BK:Ljava/lang/String;

    iput-object p2, p0, Lcom/tencent/bugly/proguard/no$a;->BL:Ljava/lang/String;

    return-void
.end method
