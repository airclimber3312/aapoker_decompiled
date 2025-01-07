.class public final Lcom/tencent/bugly/proguard/dn$c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/bugly/proguard/dn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field dw:J

.field iU:Ljava/lang/String;

.field iV:Ljava/lang/String;

.field iW:Z

.field iX:J

.field iY:Ljava/lang/String;

.field iZ:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JZJLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/bugly/proguard/dn$c;->iU:Ljava/lang/String;

    iput-object p2, p0, Lcom/tencent/bugly/proguard/dn$c;->iV:Ljava/lang/String;

    iput-wide p3, p0, Lcom/tencent/bugly/proguard/dn$c;->dw:J

    iput-boolean p5, p0, Lcom/tencent/bugly/proguard/dn$c;->iW:Z

    iput-wide p6, p0, Lcom/tencent/bugly/proguard/dn$c;->iX:J

    iput-object p8, p0, Lcom/tencent/bugly/proguard/dn$c;->iY:Ljava/lang/String;

    iput-object p9, p0, Lcom/tencent/bugly/proguard/dn$c;->iZ:Ljava/lang/String;

    return-void
.end method
