.class public final synthetic Lcom/onevcat/uniwebview/UniWebViewContainer$WhenMappings;
.super Ljava/lang/Object;
.source "UniWebViewContainer.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onevcat/uniwebview/UniWebViewContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "WhenMappings"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/onevcat/uniwebview/AnimationEdge;->values()[Lcom/onevcat/uniwebview/AnimationEdge;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sget-object v1, Lcom/onevcat/uniwebview/AnimationEdge;->TOP:Lcom/onevcat/uniwebview/AnimationEdge;

    invoke-virtual {v1}, Lcom/onevcat/uniwebview/AnimationEdge;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v1, Lcom/onevcat/uniwebview/AnimationEdge;->RIGHT:Lcom/onevcat/uniwebview/AnimationEdge;

    invoke-virtual {v1}, Lcom/onevcat/uniwebview/AnimationEdge;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1

    sget-object v1, Lcom/onevcat/uniwebview/AnimationEdge;->BOTTOM:Lcom/onevcat/uniwebview/AnimationEdge;

    invoke-virtual {v1}, Lcom/onevcat/uniwebview/AnimationEdge;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1

    sget-object v1, Lcom/onevcat/uniwebview/AnimationEdge;->LEFT:Lcom/onevcat/uniwebview/AnimationEdge;

    invoke-virtual {v1}, Lcom/onevcat/uniwebview/AnimationEdge;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1

    sget-object v1, Lcom/onevcat/uniwebview/AnimationEdge;->NONE:Lcom/onevcat/uniwebview/AnimationEdge;

    invoke-virtual {v1}, Lcom/onevcat/uniwebview/AnimationEdge;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1

    sput-object v0, Lcom/onevcat/uniwebview/UniWebViewContainer$WhenMappings;->$EnumSwitchMapping$0:[I

    return-void
.end method
