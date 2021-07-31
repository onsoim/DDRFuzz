foreach ($model in 'seq2seq', 'attention', 'transformer')
{
    foreach ($format in 'AVIF', 'BMP', 'H264')
    {
        python .\ddrfuzz.py --mode train --epochs 30 --model $model --format $format --path ..\seeds\$format\1000\sampling\
        python .\ddrfuzz.py --mode test --model $model --format $format --path ..\seeds\AVIF\1000\sampling\
    }
}