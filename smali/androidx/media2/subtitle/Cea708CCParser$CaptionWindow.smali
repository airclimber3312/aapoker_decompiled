.class public Landroidx/media2/subtitle/Cea708CCParser$CaptionWindow;
.super Ljava/lang/Object;
.source "Cea708CCParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/subtitle/Cea708CCParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CaptionWindow"
.end annotation


# instance fields
.field public final anchorHorizontal:I

.field public final anchorId:I

.field public final anchorVertical:I

.field public final columnCount:I

.field public final columnLock:Z

.field public final id:I

.field public final penStyle:I

.field public final priority:I

.field public final relativePositioning:Z

.field public final rowCount:I

.field public final rowLock:Z

.field public final visible:Z

.field public final windowStyle:I


# direct methods
.method constructor <init>(IZZZIZIIIIIII)V
    .locals 0

    .line 896
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 897
    iput p1, p0, Landroidx/media2/subtitle/Cea708CCParser$CaptionWindow;->id:I

    .line 898
    iput-boolean p2, p0, Landroidx/media2/subtitle/Cea708CCParser$CaptionWindow;->visible:Z

    .line 899
    iput-boolean p3, p0, Landroidx/media2/subtitle/Cea708CCParser$CaptionWindow;->rowLock:Z

    .line 900
    iput-boolean p4, p0, Landroidx/media2/subtitle/Cea708CCParser$CaptionWindow;->columnLock:Z

    .line 901
    iput p5, p0, Landroidx/media2/subtitle/Cea708CCParser$CaptionWindow;->priority:I

    .line 902
    iput-boolean p6, p0, Landroidx/media2/subtitle/Cea708CCParser$CaptionWindow;->relativePositioning:Z

    .line 903
    iput p7, p0, Landroidx/media2/subtitle/Cea708CCParser$CaptionWindow;->anchorVertical:I

    .line 904
    iput p8, p0, Landroidx/media2/subtitle/Cea708CCParser$CaptionWindow;->anchorHorizontal:I

    .line 905
    iput p9, p0, Landroidx/media2/subtitle/Cea708CCParser$CaptionWindow;->anchorId:I

    .line 906
    iput p10, p0, Landroidx/media2/subtitle/Cea708CCParser$CaptionWindow;->rowCount:I

    .line 907
    iput p11, p0, Landroidx/media2/subtitle/Cea708CCParser$CaptionWindow;->columnCount:I

    .line 908
    iput p12, p0, Landroidx/media2/subtitle/Cea708CCParser$CaptionWindow;->penStyle:I

    .line 909
    iput p13, p0, Landroidx/media2/subtitle/Cea708CCParser$CaptionWindow;->windowStyle:I

    return-void
.end method
