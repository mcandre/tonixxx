#pragma once

/**
 * @copyright 2020 YelloSoft
 * @mainpage
 *
 * @ref parse_boi reads hexadecimal pairs.
 *
 * @ref render_boi formats hexadecimal pairs.
 */

/**
 * @brief render_boi formats a hexadecimal pair.
 *
 * @param hexpair buffer (3 bytes)
 * @param c value
 */
void render_boi(char *hexpair, unsigned char c);

/**
 * @brief parse_boi reads a hexadecimal pair.
 *
 * @param hexpair hexadecimal pair (2 characters + NULL terminator)
 *
 * @returns value. -1 indicates an error.
 */
int parse_boi(const char *hexpair);
