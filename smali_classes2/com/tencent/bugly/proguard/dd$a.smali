.class final Lcom/tencent/bugly/proguard/dd$a;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/bugly/proguard/dd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field private action:I

.field private gA:[Ljava/lang/String;

.field private gB:Ljava/lang/String;

.field private gC:Ljava/lang/String;

.field private gD:Ljava/lang/String;

.field private gE:Ljava/lang/String;

.field private gF:[Ljava/lang/String;

.field private gG:I

.field private gH:Ljava/lang/String;

.field private gI:[B

.field final synthetic gJ:Lcom/tencent/bugly/proguard/dd;

.field private gx:Lcom/tencent/bugly/proguard/dc;

.field private gy:Ljava/lang/String;

.field private gz:Z

.field private orderBy:Ljava/lang/String;

.field private selection:Ljava/lang/String;

.field private selectionArgs:[Ljava/lang/String;

.field private values:Landroid/content/ContentValues;


# direct methods
.method public constructor <init>(Lcom/tencent/bugly/proguard/dd;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/bugly/proguard/dd$a;->gJ:Lcom/tencent/bugly/proguard/dd;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 p1, 0x4

    iput p1, p0, Lcom/tencent/bugly/proguard/dd$a;->action:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/tencent/bugly/proguard/dd$a;->gx:Lcom/tencent/bugly/proguard/dc;

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/String;[B)V
    .locals 0

    iput p1, p0, Lcom/tencent/bugly/proguard/dd$a;->gG:I

    iput-object p2, p0, Lcom/tencent/bugly/proguard/dd$a;->gH:Ljava/lang/String;

    iput-object p3, p0, Lcom/tencent/bugly/proguard/dd$a;->gI:[B

    return-void
.end method

.method public final run()V
    .locals 17

    move-object/from16 v0, p0

    iget v1, v0, Lcom/tencent/bugly/proguard/dd$a;->action:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v1, v0, Lcom/tencent/bugly/proguard/dd$a;->gJ:Lcom/tencent/bugly/proguard/dd;

    iget v2, v0, Lcom/tencent/bugly/proguard/dd$a;->gG:I

    iget-object v3, v0, Lcom/tencent/bugly/proguard/dd$a;->gH:Ljava/lang/String;

    iget-object v4, v0, Lcom/tencent/bugly/proguard/dd$a;->gx:Lcom/tencent/bugly/proguard/dc;

    invoke-static {v1, v2, v3, v4}, Lcom/tencent/bugly/proguard/dd;->a(Lcom/tencent/bugly/proguard/dd;ILjava/lang/String;Lcom/tencent/bugly/proguard/dc;)Z

    goto :goto_0

    :pswitch_1
    iget-object v1, v0, Lcom/tencent/bugly/proguard/dd$a;->gJ:Lcom/tencent/bugly/proguard/dd;

    iget v2, v0, Lcom/tencent/bugly/proguard/dd$a;->gG:I

    iget-object v3, v0, Lcom/tencent/bugly/proguard/dd$a;->gx:Lcom/tencent/bugly/proguard/dc;

    invoke-static {v1, v2, v3}, Lcom/tencent/bugly/proguard/dd;->a(Lcom/tencent/bugly/proguard/dd;ILcom/tencent/bugly/proguard/dc;)Ljava/util/Map;

    return-void

    :pswitch_2
    iget-object v1, v0, Lcom/tencent/bugly/proguard/dd$a;->gJ:Lcom/tencent/bugly/proguard/dd;

    iget v2, v0, Lcom/tencent/bugly/proguard/dd$a;->gG:I

    iget-object v3, v0, Lcom/tencent/bugly/proguard/dd$a;->gH:Ljava/lang/String;

    iget-object v4, v0, Lcom/tencent/bugly/proguard/dd$a;->gI:[B

    iget-object v5, v0, Lcom/tencent/bugly/proguard/dd$a;->gx:Lcom/tencent/bugly/proguard/dc;

    invoke-static {v1, v2, v3, v4, v5}, Lcom/tencent/bugly/proguard/dd;->a(Lcom/tencent/bugly/proguard/dd;ILjava/lang/String;[BLcom/tencent/bugly/proguard/dc;)Z

    return-void

    :pswitch_3
    iget-object v6, v0, Lcom/tencent/bugly/proguard/dd$a;->gJ:Lcom/tencent/bugly/proguard/dd;

    iget-boolean v7, v0, Lcom/tencent/bugly/proguard/dd$a;->gz:Z

    iget-object v8, v0, Lcom/tencent/bugly/proguard/dd$a;->gy:Ljava/lang/String;

    iget-object v9, v0, Lcom/tencent/bugly/proguard/dd$a;->gA:[Ljava/lang/String;

    iget-object v10, v0, Lcom/tencent/bugly/proguard/dd$a;->selection:Ljava/lang/String;

    iget-object v11, v0, Lcom/tencent/bugly/proguard/dd$a;->selectionArgs:[Ljava/lang/String;

    iget-object v12, v0, Lcom/tencent/bugly/proguard/dd$a;->gB:Ljava/lang/String;

    iget-object v13, v0, Lcom/tencent/bugly/proguard/dd$a;->gC:Ljava/lang/String;

    iget-object v14, v0, Lcom/tencent/bugly/proguard/dd$a;->orderBy:Ljava/lang/String;

    iget-object v15, v0, Lcom/tencent/bugly/proguard/dd$a;->gD:Ljava/lang/String;

    iget-object v1, v0, Lcom/tencent/bugly/proguard/dd$a;->gx:Lcom/tencent/bugly/proguard/dc;

    move-object/from16 v16, v1

    invoke-static/range {v6 .. v16}, Lcom/tencent/bugly/proguard/dd;->a(Lcom/tencent/bugly/proguard/dd;ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/bugly/proguard/dc;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-void

    :pswitch_4
    iget-object v1, v0, Lcom/tencent/bugly/proguard/dd$a;->gJ:Lcom/tencent/bugly/proguard/dd;

    iget-object v2, v0, Lcom/tencent/bugly/proguard/dd$a;->gy:Ljava/lang/String;

    iget-object v3, v0, Lcom/tencent/bugly/proguard/dd$a;->gE:Ljava/lang/String;

    iget-object v4, v0, Lcom/tencent/bugly/proguard/dd$a;->gF:[Ljava/lang/String;

    iget-object v5, v0, Lcom/tencent/bugly/proguard/dd$a;->gx:Lcom/tencent/bugly/proguard/dc;

    invoke-static {v1, v2, v3, v4, v5}, Lcom/tencent/bugly/proguard/dd;->a(Lcom/tencent/bugly/proguard/dd;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/tencent/bugly/proguard/dc;)I

    return-void

    :pswitch_5
    iget-object v1, v0, Lcom/tencent/bugly/proguard/dd$a;->gJ:Lcom/tencent/bugly/proguard/dd;

    iget-object v2, v0, Lcom/tencent/bugly/proguard/dd$a;->gy:Ljava/lang/String;

    iget-object v3, v0, Lcom/tencent/bugly/proguard/dd$a;->values:Landroid/content/ContentValues;

    iget-object v4, v0, Lcom/tencent/bugly/proguard/dd$a;->gx:Lcom/tencent/bugly/proguard/dc;

    invoke-static {v1, v2, v3, v4}, Lcom/tencent/bugly/proguard/dd;->a(Lcom/tencent/bugly/proguard/dd;Ljava/lang/String;Landroid/content/ContentValues;Lcom/tencent/bugly/proguard/dc;)J

    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
