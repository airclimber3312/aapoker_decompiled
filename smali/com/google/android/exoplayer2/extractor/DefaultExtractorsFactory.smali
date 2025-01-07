.class public final Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;
.super Ljava/lang/Object;
.source "DefaultExtractorsFactory.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;


# static fields
.field private static final FLAC_EXTRACTOR_CONSTRUCTOR:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "+",
            "Lcom/google/android/exoplayer2/extractor/Extractor;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private fragmentedMp4Flags:I

.field private matroskaFlags:I

.field private mp3Flags:I

.field private mp4Flags:I

.field private tsFlags:I

.field private tsMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    :try_start_0
    const-string v0, "com.google.android.exoplayer2.ext.flac.FlacExtractor"

    .line 62
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/google/android/exoplayer2/extractor/Extractor;

    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 70
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Error instantiating FLAC extension"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    const/4 v0, 0x0

    .line 72
    :goto_0
    sput-object v0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;->FLAC_EXTRACTOR_CONSTRUCTOR:Ljava/lang/reflect/Constructor;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 83
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;->tsMode:I

    return-void
.end method


# virtual methods
.method public declared-synchronized createExtractors()[Lcom/google/android/exoplayer2/extractor/Extractor;
    .locals 7

    monitor-enter p0

    .line 164
    :try_start_0
    sget-object v0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;->FLAC_EXTRACTOR_CONSTRUCTOR:Ljava/lang/reflect/Constructor;

    const/16 v1, 0xc

    if-nez v0, :cond_0

    const/16 v2, 0xc

    goto :goto_0

    :cond_0
    const/16 v2, 0xd

    :goto_0
    new-array v2, v2, [Lcom/google/android/exoplayer2/extractor/Extractor;

    .line 165
    new-instance v3, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;

    iget v4, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;->matroskaFlags:I

    invoke-direct {v3, v4}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;-><init>(I)V

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 166
    new-instance v3, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;

    iget v5, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;->fragmentedMp4Flags:I

    invoke-direct {v3, v5}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;-><init>(I)V

    const/4 v5, 0x1

    aput-object v3, v2, v5

    .line 167
    new-instance v3, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;

    iget v5, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;->mp4Flags:I

    invoke-direct {v3, v5}, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;-><init>(I)V

    const/4 v5, 0x2

    aput-object v3, v2, v5

    .line 168
    new-instance v3, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;

    iget v5, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;->mp3Flags:I

    invoke-direct {v3, v5}, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;-><init>(I)V

    const/4 v5, 0x3

    aput-object v3, v2, v5

    .line 169
    new-instance v3, Lcom/google/android/exoplayer2/extractor/ts/AdtsExtractor;

    invoke-direct {v3}, Lcom/google/android/exoplayer2/extractor/ts/AdtsExtractor;-><init>()V

    const/4 v5, 0x4

    aput-object v3, v2, v5

    .line 170
    new-instance v3, Lcom/google/android/exoplayer2/extractor/ts/Ac3Extractor;

    invoke-direct {v3}, Lcom/google/android/exoplayer2/extractor/ts/Ac3Extractor;-><init>()V

    const/4 v5, 0x5

    aput-object v3, v2, v5

    .line 171
    new-instance v3, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;

    iget v5, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;->tsMode:I

    iget v6, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;->tsFlags:I

    invoke-direct {v3, v5, v6}, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;-><init>(II)V

    const/4 v5, 0x6

    aput-object v3, v2, v5

    .line 172
    new-instance v3, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;

    invoke-direct {v3}, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;-><init>()V

    const/4 v5, 0x7

    aput-object v3, v2, v5

    .line 173
    new-instance v3, Lcom/google/android/exoplayer2/extractor/ogg/OggExtractor;

    invoke-direct {v3}, Lcom/google/android/exoplayer2/extractor/ogg/OggExtractor;-><init>()V

    const/16 v5, 0x8

    aput-object v3, v2, v5

    .line 174
    new-instance v3, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;

    invoke-direct {v3}, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;-><init>()V

    const/16 v5, 0x9

    aput-object v3, v2, v5

    .line 175
    new-instance v3, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor;

    invoke-direct {v3}, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor;-><init>()V

    const/16 v5, 0xa

    aput-object v3, v2, v5

    .line 176
    new-instance v3, Lcom/google/android/exoplayer2/extractor/amr/AmrExtractor;

    invoke-direct {v3}, Lcom/google/android/exoplayer2/extractor/amr/AmrExtractor;-><init>()V

    const/16 v5, 0xb

    aput-object v3, v2, v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    :try_start_1
    new-array v3, v4, [Ljava/lang/Object;

    .line 179
    invoke-virtual {v0, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/extractor/Extractor;

    aput-object v0, v2, v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 182
    :try_start_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unexpected error creating FLAC extractor"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 185
    :cond_1
    :goto_1
    monitor-exit p0

    return-object v2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setFragmentedMp4ExtractorFlags(I)Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;
    .locals 0

    monitor-enter p0

    .line 120
    :try_start_0
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;->fragmentedMp4Flags:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setMatroskaExtractorFlags(I)Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;
    .locals 0

    monitor-enter p0

    .line 95
    :try_start_0
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;->matroskaFlags:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setMp3ExtractorFlags(I)Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;
    .locals 0

    monitor-enter p0

    .line 132
    :try_start_0
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;->mp3Flags:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setMp4ExtractorFlags(I)Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;
    .locals 0

    monitor-enter p0

    .line 107
    :try_start_0
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;->mp4Flags:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setTsExtractorFlags(I)Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;
    .locals 0

    monitor-enter p0

    .line 158
    :try_start_0
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;->tsFlags:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setTsExtractorMode(I)Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;
    .locals 0

    monitor-enter p0

    .line 144
    :try_start_0
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;->tsMode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
