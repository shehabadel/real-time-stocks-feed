-- +goose Up
-- +goose StatementBegin
CREATE TABLE IF NOT EXISTS feed.trades
(
    `sym` String,
    `x` UInt16,
    `i` String,
    `z` UInt8,
    `p` Decimal64(11),
    `s` UInt64,
    `t` UInt64,
    `q` UInt64,
    `c` Array(UInt8)
)
ORDER BY (sym, t - (t % 60000))
-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
DROP TABLE IF EXISTS feed.trades
-- +goose StatementEnd
