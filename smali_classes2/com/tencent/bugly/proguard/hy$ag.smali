.class final Lcom/tencent/bugly/proguard/hy$ag;
.super Lkotlin/jvm/internal/Lambda;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/bugly/proguard/hy;->g(Landroid/database/Cursor;)Lcom/tencent/bugly/proguard/qs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
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
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field final synthetic uW:Lcom/tencent/bugly/proguard/qs;

.field final synthetic uX:Landroid/database/Cursor;


# direct methods
.method constructor <init>(Lcom/tencent/bugly/proguard/qs;Landroid/database/Cursor;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/bugly/proguard/hy$ag;->uW:Lcom/tencent/bugly/proguard/qs;

    iput-object p2, p0, Lcom/tencent/bugly/proguard/hy$ag;->uX:Landroid/database/Cursor;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic invoke()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/tencent/bugly/proguard/hy$ag;->uW:Lcom/tencent/bugly/proguard/qs;

    iget-object v1, p0, Lcom/tencent/bugly/proguard/hy$ag;->uX:Landroid/database/Cursor;

    const-string v2, "user_id"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "cursor.getString(cursor.\u2026umnIndex(COLUMN_USER_ID))"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/qs;->bG(Ljava/lang/String;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
